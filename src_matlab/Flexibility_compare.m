%% create settings
p = struct();
p.Span = 1;
p.Chord = 0.1;
p.params = [30,0,0,5e-3,0.0,0,10]; % U, Ail, Torque, thickness, sigma, sweep;
p.p_names = ["U", "Ail", "Torque", "h", "Sigma", "sweep","Flare"];
p.ail = -20;
p.h=5;
p.RollRate = 200;
save('tmp_settings.mat','p')

%% free
tic;
name = NBNT_VLM.ChangeBaseClass("Roll_B3T2_FWT_RC");
fh.printing.title(name,Symbol='=')
clear all
load('tmp_settings.mat','p')
% Ail curve
[res_free,model] = get_data2(p.Span,p.Chord,p.params,RollRate=p.RollRate);
p.params(2) = res_free(1).params(2);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0),'.mat'],'res_free');
save('tmp_settings.mat','p')
clear all
toc;

%% locked
name = NBNT_VLM.ChangeBaseClass("Roll_B3T2_FWT_Locked_RC");
fh.printing.title(name,Symbol='=')
clear all
load('tmp_settings.mat','p')
% Ail curve
[res_locked,model] = get_data2(p.Span,p.Chord,p.params);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0),'.mat'],'res_locked');
clear all


%% make plot
load('tmp_settings.mat','p')
%aileron curve
tt = sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0);
load(['tmp_','Roll_B3T2_FWT_RC',tt,'.mat'],'res_free');
load(['tmp_','Roll_B3T2_FWT_Locked_RC',tt,'.mat'],'res_locked');
f = fh.pubFig(Size=[16,12],Layout=[2,2],Num=1);
abs_plot(res_free,Color=[1 0 0],LineStyle='-')
abs_plot(res_locked,Color=[0 0 1],LineStyle='-')

lg = legend('Free','Locked','Free (NAT)','Locked (NAT)','Free (T)','Locked (T)');
lg.Layout.Tile = "south";
% lg.Orientation = "horizontal";
lg.NumColumns = 3;
lg.FontSize = 10;
copygraphics(gcf)

%% 
tt = sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0);
load(['tmp_','Roll_B3T2_FWT_RC',tt,'.mat'],'res_free');
load(['tmp_','Roll_B3T2_FWT_Locked_RC',tt,'.mat'],'res_locked');
name = NBNT_VLM.ChangeBaseClass("Roll_B3T2_FWT_RC");

tmp_res = res_free;
[~,idx] = min(([tmp_res.h]-(0)).^2);

model = get_model(1,0.1);
model.set_parameters(tmp_res(idx).params)
model.deriv(0,tmp_res(idx).U);
f = figure(2);clf;model.vlm.draw(param='Cp');axis equal
ax = gca;
ax.ZAxis.Direction = "reverse";
f = gcf;
f.Clipping = "off";

function abs_plot(res,varargin)
    x = 'h [mm]';
    
    [~,idx] = unique([res.h]);
    tipDisp = [res(idx).TipDisp]./([res(idx).Span]./2)*100;
    idx2= abs(tipDisp)<=100 & abs([res(idx).Fold])<90;
    idx = idx(idx2);
    h = [res(idx).h]*1e3;
    nexttile(1)
    plot(h,[res(idx).RollRate],varargin{:})
    xlabel(x)
    ylabel('Roll Rate [deg/s]')
    
    nexttile(2)
    plot(h,[res(idx).TipTwist],varargin{:})
    xlabel(x)
    ylabel('Tip Twist [deg]')
    
    nexttile(3)
    plot(h,-[res(idx).TipDisp]./([res(idx).Span]./2)*100,varargin{:})
    xlabel(x)
    ylabel('Tip Disp. [\% Semi-span]')
    % ylim([-100 20])
    
    nexttile(4)
    plot(h,[res(idx).Fold],varargin{:})
    xlabel(x)
    ylabel('Fold [deg]')
end

function model = get_model(Span,Chord)
    model = NBNT_VLM();
    model = set_roll_model_params(model,10,g=0,Span=Span,chord=Chord);
    model.nChord = 4;
    model.ToStitch = true;
    model.generate_vlm_model();
    % calc AIC in linear postion
    % model.alpha_r = 1;
    model.u = 20;
    model.vlm.XZ_sym = true;
    model.deriv(0,zeros(model.DoFs*2,1))';
    model.updateAIC = false;
end

%% method 2...
function [res,model] = get_data2(Span,Chord,params,opts)
arguments
    Span 
    Chord 
    params
    opts.RollRate =nan;
    opts.NoTwist = false;
end
    %setup model
    model = get_model(Span,Chord);
    model.NoTorque = opts.NoTwist;

    % model.alpha_r = 0;
    % model.beta_r = 0;

    % f = figure(1);model.vlm.draw;axis equal
    %% do parameter sweeps
    q_idx=2:(model.DoFs+1);
    out_idx=model.DoFs+1:model.DoFs*2;
    p_names = ["U", "Ail", "Torque", "h", "Sigma", "sweep","Flare"];
    
    fh.printing.title(sprintf('Increase torque'))
    X0 = zeros(model.DoFs*2,1);
    if params(2)==0
        AilRes = model.pusedo_arclength_continuation(X0,params,2,sort([-15,0]),-1,[1e-2,1],[0,inf],1,400,p_names,false,false,q_idx,out_idx);
        AilRes = EnrichMeta(AilRes,model);
        [mRR,idx] = max([AilRes.RollRate]);
        if mRR<opts.RollRate
            params = AilRes(idx).params;
            U = AilRes(idx).U;
        else
            % find value for specific roll rate
            params = interp1(abs([AilRes.RollRate]),reshape([AilRes.params],length(AilRes(1).params),[])',opts.RollRate);
            Ui = interp1(abs([AilRes.RollRate]),[AilRes.U]',opts.RollRate)';
            model.set_parameters(params)
            U = model.find_equilibrium(Ui,0,q_idx=q_idx,out_idx=out_idx);
        end
    else
        ail = params(2);
        params(2) = 0;
        AilRes = model.pusedo_arclength_continuation(X0,params,2,sort([ail,0]),sign(-1),[1e-2,1],[0,inf],1,400,p_names,false,false,q_idx,out_idx);
        AilRes = EnrichMeta(AilRes,model);
        params = AilRes(end).params;
        U = AilRes(end).U;
    end

    % reduce beam thickness
    fh.printing.title(sprintf('Reduce Flexibility'))
    res = model.pusedo_arclength_continuation(U,params,4,[0.5e-3,params(4)],-1,[5e-5,inf],[0.025,0.1]*1e-3,1e-4,400,p_names,false,false,q_idx,out_idx);
    fh.printing.title(sprintf('Enrich Meta Data'))
    res = EnrichMeta(res,model);
end

function res = EnrichMeta(res,model)
    for i = 1:length(res)
        model.set_parameters(res(i).params);
        z = model.get_pos_inner_wing(res(i).U,[0;model.y_h;0]);
        v = model.get_surf_z(res(i).U,[0;model.y_h;0]);
        u=[0;v(2:3)];
        ss = sign(cross(u,v));
        ang = atan2(norm(cross(u,v)),dot(u,v))*ss(2);
        res(i).TipTwist = rad2deg(ang);
        res(i).RollRate = rad2deg(res(i).U(model.DoFs+1));
        if contains(model.Name,'Locked')
            res(i).Fold = 0;
        else
            res(i).Fold = rad2deg(res(i).U(model.DoFs));
        end
        res(i).TipDisp = z(3);
        res(i).Name = model.Name;
        res(i).Span = model.semiSpan*2;
        res(i).Chord = model.chord;
    end
end