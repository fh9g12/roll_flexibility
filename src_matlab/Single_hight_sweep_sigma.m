%% create settings
p = struct();
p.Span = 1;
p.Chord = 0.1;
p.h = 0.75;
p.ail = -20;
p.ail2 = -20;
p.tor = 10;
p.RollRate = 200;
save('tmp_settings.mat','p')

%% free
tic;
name = NBNT_VLM.ChangeBaseClass("Roll_B3T2_FWT_RC");
fh.printing.title(name,Symbol='=')
clear all
load('tmp_settings.mat','p')
% torque curve
[res_free,model] = get_data2(p.Span,p.Chord,p.h,0,p.tor,RollRate=p.RollRate);
p.tor = res_free(1).params(3);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,0,p.tor*100),'.mat'],'res_free');
% Ail curve
[res_free,model] = get_data2(p.Span,p.Chord,p.h,p.ail,0,RollRate=p.RollRate);
p.ail = res_free(1).params(2);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0),'.mat'],'res_free');
% Ail 2 Curve
[res_free,model] = get_data2(p.Span,p.Chord,p.h,p.ail2,0,RollRate=p.RollRate,NoTwist=true);
p.ail2 = res_free(1).params(2);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f_no_twist',p.h,p.ail2,0),'.mat'],'res_free');
save('tmp_settings.mat','p')
clear all
toc;

%% locked
name = NBNT_VLM.ChangeBaseClass("Roll_B3T2_FWT_Locked_RC");
fh.printing.title(name,Symbol='=')
clear all
load('tmp_settings.mat','p')
% torque curve
[res_locked,model] = get_data2(p.Span,p.Chord,p.h,0,p.tor);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,0,p.tor*100),'.mat'],'res_locked');
% Ail curve
[res_locked,model] = get_data2(p.Span,p.Chord,p.h,p.ail,0);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,p.ail,0),'.mat'],'res_locked');
% Ail 2 curve
[res_locked,model] = get_data2(p.Span,p.Chord,p.h,p.ail2,0,NoTwist=true);
save(['tmp_',model.Name,sprintf('_h_%.0f_ail_%.0f_t_%.0f_no_twist',p.h,p.ail2,0),'.mat'],'res_locked');

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

%aileron 2 curve
tt = sprintf('_h_%.0f_ail_%.0f_t_%.0f_no_twist',p.h,p.ail2,0);
load(['tmp_','Roll_B3T2_FWT_RC',tt,'.mat'],'res_free');
load(['tmp_','Roll_B3T2_FWT_Locked_RC',tt,'.mat'],'res_locked');
abs_plot(res_free,Color=[1 0 0],LineStyle=':')
abs_plot(res_locked,Color=[0 0 1],LineStyle=':')

% torque curve
tt = sprintf('_h_%.0f_ail_%.0f_t_%.0f',p.h,0,p.tor*100);
load(['tmp_','Roll_B3T2_FWT_RC',tt,'.mat'],'res_free');
load(['tmp_','Roll_B3T2_FWT_Locked_RC',tt,'.mat'],'res_locked');
abs_plot(res_free,Color=[1 0 0],LineStyle='-.')
abs_plot(res_locked,Color=[0 0 1],LineStyle='-.')

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
[~,idx] = min(([tmp_res.Sigma]-(0.85)).^2);

model = get_model(1,0.1,tmp_res(idx).h);
model.set_parameters(tmp_res(idx).params)
model.deriv(0,tmp_res(idx).U);
f = figure(2);clf;model.vlm.draw(param='Cp');axis equal
ax = gca;
ax.ZAxis.Direction = "reverse";
f = gcf;
f.Clipping = "off";

function abs_plot(res,varargin)
    [~,idx] = unique([res.Sigma]);
    tipDisp = [res(idx).TipDisp]./([res(idx).Span]./2)*100;
    idx2= abs(tipDisp)<=100 & abs([res(idx).Fold])<90;
    idx2 = idx2 & [res(idx).Sigma]>=-0.93;
    idx = idx(idx2);
    nexttile(1)
    plot([res(idx).Sigma],[res(idx).RollRate],varargin{:})
    xlabel('$\sigma$')
    ylabel('Roll Rate [deg/s]')
    
    nexttile(2)
    plot([res(idx).Sigma],[res(idx).TipTwist],varargin{:})
    xlabel('$\sigma$')
    ylabel('Tip Twist [deg]')
    
    nexttile(3)
    plot([res(idx).Sigma],[res(idx).TipDisp]./([res(idx).Span]./2)*100,varargin{:})
    xlabel('$\sigma$')
    ylabel('Tip Disp. [\% Semi-span]')
    
    nexttile(4)
    plot([res(idx).Sigma],[res(idx).Fold],varargin{:})
    xlabel('$\sigma$')
    ylabel('Fold [deg]')
end

function model = get_model(Span,Chord,h)
    model = NBNT_VLM();
    model = set_roll_model_params(model,10,g=0,Span=Span,chord=Chord);
    model.nChord = 4;
    model.generate_vlm_model();
    % calc AIC in linear postion
    % model.alpha_r = 1;
    model.u = 20;
    model.vlm.XZ_sym = true;
    model.deriv(0,zeros(model.DoFs*2,1))';
    model.updateAIC = false;
end

%% method 2...
function [res,model] = get_data2(Span,Chord,h,ail,torque,opts)
arguments
    Span 
    Chord 
    h 
    ail 
    torque 
    opts.RollRate =nan;
    opts.NoTwist = false;
end
    %setup model
    model = get_model(Span,Chord,h);
    model.NoTorque = opts.NoTwist;

    % model.alpha_r = 0;
    % model.beta_r = 0;

    % f = figure(1);model.vlm.draw;axis equal
    %% do parameter sweeps
    sigma_max = 0.95;
    q_idx=2:(model.DoFs+1);
    out_idx=model.DoFs+1:model.DoFs*2;
    params = [30,0,0,h*1e-3,0,0,10]; % U, Ail, Torque, thickness, sigma, sweep;
    p_names = ["U", "Ail", "Torque", "h", "Sigma", "sweep","Flare"];
    
    fh.printing.title(sprintf('Increase torque'))
    X0 = zeros(model.DoFs*2,1);
    if ail~=0
        AilRes = model.pusedo_arclength_continuation(X0,params,2,sort([ail,0]),sign(ail),[1e-2,1],[0,inf],1,400,p_names,false,false,q_idx,out_idx);
    elseif torque~=0
        AilRes = model.pusedo_arclength_continuation(X0,params,3,sort([torque,0]),sign(torque),[1e-2,1],[0,inf],0.5,400,p_names,false,false,q_idx,out_idx);
    end
    AilRes = EnrichMeta(AilRes,model);
    if ~isnan(opts.RollRate)
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
        params = AilRes(end).params;
        U = AilRes(end).U;
    end
    % positive coupling sweep
    fh.printing.title(sprintf('Coupling sweeps Up'))
    res_up = model.pusedo_arclength_continuation(U,params,5,[0,sigma_max],1,[1e-2,inf],[0.01,0.05],0.05,400,p_names,false,false,q_idx,out_idx);
    % positive coupling sweep
    fh.printing.title(sprintf('Coupling sweeps Down'))
    res_dwn = model.pusedo_arclength_continuation(U,params,5,[-sigma_max,0],-1,[1e-2,inf],[0.01,0.05],0.05,400,p_names,false,false,q_idx,out_idx);

    res = [flipud(res_dwn(2:end)),res_up];
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