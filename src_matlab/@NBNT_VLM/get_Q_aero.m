function [Q,Q_inner,Q_fwt] = get_Q_aero(p,U,t)
%GET_AERO Summary of this function goes here
%   Detailed explanation goes here
p.vlm.Wings{1}.Sections{1}.U = U; 
p.vlm.Wings{2}.Sections{1}.U = U; 
p.vlm.Wings{2}.Sections{1}.Rot = p.get_fwt_A(U);
p.vlm.Wings{2}.Sections{1}.R = p.get_pos_fwt2global(U,[0,0,0]') + [0 p.root_y 0]';


p.vlm.Wings{3}.Sections{1}.Rot = p.get_inner_A(U);
% p.vlm.Wings{4}.Sections{1}.R = p.get_inner_A(U)*[0;-p.innerSpan/2;0];

v_dir = -p.get_air_velocity(t);
if p.updateAIC
    p.vlm.generate_te_horseshoe((v_dir./norm(v_dir))*10);
    p.vlm.generate_AIC3D();
end
%update filiment centroids
if p.vlm.useMEX
    p.vlm.Filiment_Position = laca.vlm.vlm_C_code('panel_compass',p.vlm.Panels,p.vlm.RingNodes);
else
    p.vlm.Filiment_Position = laca.vlm.panel_compass(p.vlm.Panels,p.vlm.RingNodes);
end
p.vlm.solve(@(x)repmat(v_dir,1,size(x,2)),U);
p.vlm.apply_result_ring(p.rho);

%add up forces on main wing
A = p.get_inner_A(U);
Forces = A'*p.vlm.Wings{1}.Sections{1}.F;
W = [Forces;zeros(3,size(Forces,2))];
Q_inner = sum(p.get_inner_Q(U,W,p.InnerNodes),2);

% add up FWT forces
Forces =  p.vlm.Wings{2}.Sections{1}.F;
A = p.get_fwt_A(U);
Forces = A'*Forces;
W = [Forces;zeros(3,size(Forces,2))];
Q_fwt = sum(p.get_fwt_Q(U,W,p.FwtNodes),2);

Q = Q_inner + Q_fwt;
end

