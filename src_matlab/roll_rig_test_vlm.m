
% names = ["B1T1_FWT_RC","B1T1_FWT_Locked_RC","B3T2_FWT_RC","B3T2_FWT_Locked_RC"];
% 
% for i = 1:length(names)
%     fh.printing.title(names(i),Symbol='=')
%     NBNT_VLM.ChangeBaseClass(names(i));
%     get_data(1,0.067);
%     clearvars all
% end




%% Span Variations
% names = ["B3T2_FWT_RC","B3T2_FWT_Locked_RC"];
names = ["Roll_B3T2_FWT_RC"];
Spans = [1];
Chords = [0.11];
for i = 1:length(names)
    for si = 1:length(Spans)
        for ci = 1:length(Chords)
            NBNT_VLM.ChangeBaseClass(names(i));
            fh.printing.title(names(i),Symbol='=')
            get_data(Spans(si),Chords(ci));
            clearvars all
        end
    end
end

%% method 2...
function get_data(Span,Chord)
    %setup model
    model = NBNT_VLM();
    model.MinSpan = [0.35/20,0.15/10];
    model.nChord = 4;
    Mat = baff.Material.Aluminium;
    model = set_roll_model_params(model,10,g=0,h_b=5*1e-3,c_b=19e-3,sigma=0,Mat=Mat,Span=Span,chord=Chord);
    model.updateAIC = true;
    model.generate_vlm_model();
    % calc AIC in linear postion
    model.alpha_r = 1;
    model.u = 20;
    model.vlm.XZ_sym = true;
    X0 = zeros(model.DoFs*2,1);
    model.deriv(0,X0)';
    model.updateAIC = false;
    model.artifical_damping = 1e-4;
    model.alpha_r = 0;
    model.beta_r = 0;
    % f = figure(1);model.vlm.draw;axis equal
    %% do parameter sweeps
    model.u = 30;
    sigmas = -0.9:0.02:0.9;
    hs = 5:-0.2:0.2;
    Mat = baff.Material.Aluminium;
    
    res = struct(S=nan,H=nan,A=nan,R=nan,K=nan,F=nan,Z=nan,Xs=nan(model.DoFs*2,1),Name='NaN',Span=nan,Chord=nan);
    for i = 1:(numel(sigmas)*numel(hs))
        res(i) = res(1);
    end
    idx = 1;
    
    %increase torque
    ail = -5;
    ails = linspace(0,ail,21);
    model = set_roll_model_params(model,10,g=0,h_b=hs(1)*1e-3,c_b=19e-3,...
            sigma=0,Mat=Mat);
    fh.printing.title(sprintf('Increase torque'))
    X0 = zeros(model.DoFs*2,1);
    for i=1:length(ails)
        model.vlm.Wings{1}.Sections{1}.Normalwash(model.vlm.Wings{1}.Sections{1}.isTE) = deg2rad(ails(i));
        [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
        if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4 || abs(rad2deg(X0(model.DoFs)))>90
            fh.printing.title(sprintf('Error at %.2f mm',hs(i)))
            error('bad');
        end
    end
    %zero sigma
    X0 = zeros(model.DoFs*2,1);
    fh.printing.title(sprintf('Change thickness'))
    for i = 1:length(hs)
        model = set_roll_model_params(model,10,g=0,h_b=hs(i)*1e-3,c_b=19e-3,...
            sigma=0,Mat=Mat);
        if i>2
            X0 = res(idx-1).Xs+(res(idx-1).Xs-res(idx-2).Xs);
        end
        [res(idx),isError] = get_res(model,hs(i),X0);
        idx = idx+1;
        if isError
            hs = hs(1:(i-1));
            break
        end
    end
    
    fh.printing.title(sprintf('Coupling sweeps'))
    % for each height continue in both directions
    s_up = unique(sigmas(sigmas>0));
    s_down = unique(sigmas(sigmas<0)*-1)*-1;
    for hi = 1:length(hs)
        fh.printing.title(sprintf('beam Thickness %.2f mm',hs(hi)))
        X0 = res(hi).Xs;
        for i = 1:length(s_up)
            model = set_roll_model_params(model,10,g=0,h_b=hs(hi)*1e-3,c_b=19e-3,...
                sigma=s_up(i),Mat=Mat);
            if i>2
                X0 = res(idx-1).Xs+(res(idx-1).Xs-res(idx-2).Xs);
            end
            [res(idx),isError] = get_res(model,hs(hi),X0);
            idx = idx+1;
            if isError
                break
            end
        end
        X0 = res(hi).Xs;
        for i = 1:length(s_down)
            model = set_roll_model_params(model,10,g=0,h_b=hs(hi)*1e-3,c_b=19e-3,...
                sigma=s_down(i),Mat=Mat);
            if i>2
                X0 = res(idx-1).Xs+(res(idx-1).Xs-res(idx-2).Xs);
            end
            [res(idx),isError] = get_res(model,hs(hi),X0);
            idx = idx + 1;
            if isError
                break
            end
        end
    end
    res = res(~isnan([res.S]));
    
    save([model.Name,sprintf('_roll_data_span_%.0fmm_chord_%.0fmm.mat',Span*1e3,Chord*1e3)],'res');
end

%% example

function [res,isError] = get_res(model,h,X0)
    [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
    if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4
        fh.printing.title(sprintf('Error at thickness thickness to %.2f mm',h))
        isError = true;
        res = struct(S=model.Sigma,H=h,A=nan,R=nan,K=nan,F=nan,Z=nan,Xs=nan(model.DoFs*2,1),Name=model.Name,Span=nan,Chord=nan);
        return
    end
    z = model.get_pos_inner_wing(X0,model.X_h');
    if abs(z(3)./model.semiSpan) > 2
        fh.printing.title(sprintf('Too much tip displacement at %.2f mm',h))
        isError = true;
        res = struct(S=model.Sigma,H=h,A=nan,R=nan,K=nan,F=nan,Z=nan,Xs=nan(model.DoFs*2,1),Name=model.Name,Span=nan,Chord=nan);
        return
    end
    v = model.get_surf_z(X0,[0;model.y_h;0]);
    u=[0;v(2:3)];
    ss = sign(cross(u,v));
    ang = atan2(norm(cross(u,v)),dot(u,v))*ss(2);
    res = struct();
    res.S = model.Sigma;
    res.H = h;
    res.A = rad2deg(ang);
    res.R = rad2deg(X0(model.DoFs+1));
    res.K = model.K;
    res.F = rad2deg(X0(model.DoFs));
    res.Z = z(3);
    res.Xs = X0;
    res.Name = model.Name;
    res.Span = model.semiSpan*2;
    res.Chord = model.chord;
    isError = false;
end