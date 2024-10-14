function generate_vlm_model(obj,opts)
arguments
    obj 
    opts.SetAIC = true;
    opts.VDir = [-1;0;0];
end
%GENERATE_VLM_MODEL Summary of this function goes here
%   Detailed explanation goes here

% define centreline
y_ce = cumsum([0,obj.innerSpan,obj.fwtSpan]);
% y_ce(1)= -y_ce(end);
N = numel(y_ce);
N_h = 2;
CE = [ones(1,N)*0;y_ce;zeros(1,N)];

%define LE and TE
LE = CE + dcrg.rotzd(obj.Sweep)*[ones(1,N)*obj.chord/4;zeros(2,N)];
TE = CE + dcrg.rotzd(obj.Sweep)*[ones(1,N)*-obj.chord*3/4;zeros(2,N)];

%twist LE and TE about the hinge
LE(:,N_h) = dcrg.geom.plane_line_intersect(dcrg.rotz(obj.Lambda)*[0;1;0],CE(:,N_h),LE(:,N_h),LE(:,N_h-1));
TE(:,N_h) = dcrg.geom.plane_line_intersect(dcrg.rotz(obj.Lambda)*[0;1;0],CE(:,N_h),TE(:,N_h),TE(:,N_h-1));

%ensure root is on XZ plane for symmetry
LE(:,1) = dcrg.geom.plane_line_intersect([0;1;0],[0;0;0],LE(:,1),LE(:,2));
TE(:,1) = dcrg.geom.plane_line_intersect([0;1;0],[0;0;0],TE(:,1),TE(:,2));

% LE(2,N_h) = LE(2,N_h) + tan(obj.Lambda)*obj.chord/4;
% TE(2,N_h) = TE(2,N_h) - tan(obj.Lambda)*obj.chord/4*3;

%create wings
wings = {};
inner_LE = LE(:,1:N_h);
inner_TE = TE(:,1:N_h);
inner_LE(2,end) = inner_LE(2,end) - obj.gap/2;
inner_TE(2,end) = inner_TE(2,end) - obj.gap/2;
wings{1} = laca.model.Wing.From_LE_TE(inner_LE,inner_TE,{});

fwt_idx = N_h:N;
fwt_N = N - N_h + 1;
fwt_origin = CE(:,N_h) + [0 0 0]';
fwt_LE = LE(:,fwt_idx)-repmat(fwt_origin,1,fwt_N);
fwt_TE = TE(:,fwt_idx)-repmat(fwt_origin,1,fwt_N);
fwt_LE(2,1) = fwt_LE(2,1) + obj.gap/2;
fwt_TE(2,1) = fwt_TE(2,1) + obj.gap/2;

wings{2} = laca.model.Wing.From_LE_TE(fwt_LE,fwt_TE,{});
wings{2}.R = fwt_origin;
model = laca.model.Aircraft(wings);
obj.vlm = laca.vlm.Model.From_laca_model(model,obj.MinSpan,obj.nChord,true);

% sort out d_cl and zero intercept ...
for i = 1:numel(obj.vlm.Wings)
    for j = 1:numel(obj.vlm.Wings{i}.Sections)
        dC_l_dalpha = obj.vlm.Wings{i}.Sections{j}.dC_l_dalpha;
        obj.vlm.Wings{i}.Sections{j}.dC_l_dalpha = dC_l_dalpha.*obj.dCl;
    end
end

% set panel filiments
obj.vlm.set_panel_filiments();
obj.vlm.XZ_sym = true;

%set functions
obj.vlm.Wings{1}.Sections{1}.Flexi_func = @(U,x)obj.get_pos_inner_wing(U,x);
obj.vlm.Wings{1}.Sections{1}.Normal_func = @(U,x)-obj.get_surf_z(U,x);
obj.vlm.Wings{1}.Sections{1}.useNormalFunc = true;
obj.vlm.Wings{1}.Sections{1}.Vbody_func = @(U,x)obj.get_inner_A(U)*obj.get_inner_V_b(U,x);  
obj.vlm.Wings{1}.Sections{1}.U = zeros(obj.DoFs*2,1);

obj.vlm.Wings{2}.Sections{1}.Vbody_func = @(U,x)obj.get_fwt_V_global(U,x); 
obj.vlm.Wings{2}.Sections{1}.updateNormal = false;
obj.vlm.Wings{2}.Sections{1}.U = zeros(obj.DoFs*2,1);

% wing stitch
stitch_idx = 1;
while ~isnan(obj.vlm.Wings{2}.Sections{1}.Connectivity(3,stitch_idx(end)))
    stitch_idx = [stitch_idx,obj.vlm.Wings{2}.Sections{1}.Connectivity(3,stitch_idx(end))];
end
nodes_stitch = unique(obj.vlm.Wings{2}.Sections{1}.Panels([1,4],stitch_idx));
stitch_X = obj.vlm.Wings{2}.Sections{1}.Nodes(:,nodes_stitch);
function x = wing_stitch(U,x)
    x(:,nodes_stitch) = obj.get_pos_inner_wing(U,stitch_X);
end
if obj.ToStitch
    obj.vlm.Wings{2}.Sections{1}.Stitch_func = @(U,x)wing_stitch(U,x);
end
% obj.vlm.Wings{2}.Sections{1}.Flexi_func = @(U,x)x;

% set force centres
% (Inner Wing) qtrChord pos of each panel
Centriods = obj.vlm.Wings{1}.Sections{1}.base_centroid;
N = obj.vlm.Wings{1}.Sections{1}.base_nodes;
c = obj.vlm.Wings{1}.Sections{1}.Panels;
delta = ((N(:,c(1,:))+N(:,c(2,:)))/2-(N(:,c(3,:))+N(:,c(4,:)))/2)*0.25;
obj.InnerNodes = Centriods + delta;
if obj.NoTorque
    obj.InnerNodes(1,:) = 0;
end
% (FWT) qtrChord pos of each panel
Centriods = obj.vlm.Wings{2}.Sections{1}.base_centroid;
N = obj.vlm.Wings{2}.Sections{1}.base_nodes;
c = obj.vlm.Wings{2}.Sections{1}.Panels;
delta = ((N(:,c(1,:))+N(:,c(2,:)))/2-(N(:,c(3,:))+N(:,c(4,:)))/2)*0.25;
obj.FwtNodes = Centriods + delta;
if obj.NoTorque
    obj.FwtNodes(1,:) = 0;
end

% set AIC
obj.vlm.XZ_sym = true;
if opts.SetAIC
    obj.vlm.generate_te_horseshoe(dcrg.rotzd(obj.Sweep)*opts.VDir*20);
    obj.vlm.generate_AIC3D();
end
end

