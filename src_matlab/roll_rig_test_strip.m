clear all
model = NBNT_Strip(15);
Mat = baff.Material.Aluminium;
model = set_roll_model_params(model,10,g=0,h_b=5*1e-3,c_b=19e-3,sigma=0,rho=Mat.rho*4.8e-3);
dist = model.generate_lift_distribution(); 
model.apply_lift_dist(dist,22,10,1,0);
model.u = 20;
model.alpha_r = 0;

X0 = zeros(model.DoFs*2,1);
X0(1) = deg2rad(90);
X0(model.DoFs+1) = deg2rad(60);
d = model.deriv(0,X0)';
X0(1) = deg2rad(0);
model.deriv(0,X0)'-d




model.artifical_damping = 1e-4;


%% run simulation
model.torque = 0.;
model.g=0;
X0 = zeros(model.DoFs*2,1);
X0(1) = deg2rad(0);
tic;
opts = odeset('InitialStep',1e-5,'MaxStep',1e-4);
sol = ode45(@(t,y)model.deriv(t,y),[0,3],X0);
toc;

% make figure
f = fh.pubFig(Size=[16,8]);
plot(sol.x,sol.y(1,:))
% plot(sol.x,sol.y(2,:)./max(abs(sol.y(2,:))))
% plot(sol.x,sol.y(3,:)./max(abs(sol.y(3,:))))
plot(sol.x,sol.y(4,:))

%% method 2...
model.u = 20;
sigmas = -0.9:0.01:0.9;
hs = 5:-0.05:1.5;
torque = 2;
Mat = baff.Material.Aluminium;

[S,H,A,R,K,Z,F,E] = deal(nan(numel(sigmas)*numel(hs),1));
Xs = nan(numel(sigmas)*numel(hs),model.DoFs*2);
idx = 1;

%increase torque
ts = linspace(0,torque,21);
model = set_roll_model_params(model,10,g=0,h_b=hs(1)*1e-3,c_b=19e-3,...
        sigma=0,rho=Mat.rho*4.8e-3);
fh.printing.title(sprintf('Increase torque'))
X0 = zeros(model.DoFs*2,1);
for i=1:length(ts)
    model.torque = ts(i);
    [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
    if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4 || abs(rad2deg(X0(model.DoFs)))>90
        fh.printing.title(sprintf('Error at %.2f mm',hs(i)))
        error('bad');
    end
end
rad2deg(X0(model.DoFs+1))
%zero sigma
X0 = zeros(model.DoFs*2,1);
fh.printing.title(sprintf('Change thickness'))
for i = 1:length(hs)
    model = set_roll_model_params(model,10,g=0,h_b=hs(i)*1e-3,c_b=19e-3,...
        sigma=0,rho=Mat.rho*4.8e-3);
    model.torque = torque;
    [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
    if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4 || abs(rad2deg(X0(model.DoFs)))>90
        fh.printing.title(sprintf('Clipping thickness to %.2f mm',hs(i-1)))
        hs = hs(1:(i-1));
        break
    end
    v = model.get_surf_z(X0,[0;model.y_h;0]);
    u=[0;v(2:3)];
    ss = sign(cross(u,v));
    % ang = acos(dot(u,v)/(norm(u)*norm(v)))*ss(2);
    ang = atan2(norm(cross(u,v)),dot(u,v))*ss(2);
    S(idx) = 0;
    H(idx) = hs(i);
    A(idx) = rad2deg(ang);
    R(idx) = rad2deg(X0(model.DoFs+1));
    K(idx) = model.K;
    F(idx) = rad2deg(X0(model.DoFs));
    z = model.get_pos_inner_wing(X0,model.X_h');
    Z(idx) = z(3);
    Xs(idx,:) = X0';
    idx = idx+1;
end

fh.printing.title(sprintf('Coupling sweeps'))
% for each height continue in both directions
s_up = unique(sigmas(sigmas>0));
s_down = unique(sigmas(sigmas<0)*-1)*-1;
for hi = 1:length(hs)
    X0 = Xs(hi,:)';
    for i = 1:length(s_up)
        model = set_roll_model_params(model,10,g=0,h_b=hs(hi)*1e-3,c_b=19e-3,...
            sigma=s_up(i),rho=Mat.rho*4.8e-3);
        model.torque = torque;
        [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
        if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4 || abs(rad2deg(X0(model.DoFs)))>90
            fh.printing.title(sprintf('Error at %.2f mm',hs(hi)))
            break
        end
        z = model.get_pos_inner_wing(X0,model.X_h');
        if abs(z(3)./model.b_i) > 0.6
            fh.printing.title(sprintf('Too much tip displacement at %.2f mm',hs(hi)))
            break
        end
        v = model.get_surf_z(X0,[0;model.y_h;0]);
        u=[0;v(2:3)];
        ss = sign(cross(u,v));
        % ang = acos(dot(u,v)/(norm(u)*norm(v)))*ss(2);
        ang = atan2(norm(cross(u,v)),dot(u,v))*ss(2);
        S(idx) = s_up(i);
        H(idx) = hs(hi);
        A(idx) = rad2deg(ang);
        R(idx) = rad2deg(X0(model.DoFs+1));
        K(idx) = model.K;
        F(idx) = rad2deg(X0(model.DoFs));
        Z(idx) = z(3);
        Xs(idx,:) = X0';
        idx = idx+1;
        if i==1
            y0 = X0;
        end
    end
    X0 = Xs(hi,:)';
    for i = 1:length(s_down)
        model = set_roll_model_params(model,10,g=0,h_b=hs(hi)*1e-3,c_b=19e-3,...
            sigma=s_down(i),rho=Mat.rho*4.8e-3);
        model.torque = torque;
        [X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2:(model.DoFs+1)],out_idx=model.DoFs+1:model.DoFs*2);
        if norm(deriv(model.DoFs+1:model.DoFs*2))>1e-4 || abs(rad2deg(X0(model.DoFs)))>90
            fh.printing.title(sprintf('Error at %.2f mm',hs(hi)))
            break
        end
        z = model.get_pos_inner_wing(X0,model.X_h');
        if abs(z(3)./model.b_i) > 0.6
            fh.printing.title(sprintf('Too much tip displacement at %.2f mm',hs(hi)))
            break
        end
        v = model.get_surf_z(X0,[0;model.y_h;0]);
        u=[0;v(2:3)];
        ss = sign(cross(u,v));
        % ang = acos(dot(u,v)/(norm(u)*norm(v)))*ss(2);
        ang = atan2(norm(cross(u,v)),dot(u,v))*ss(2);
        S(idx) = s_down(i);
        H(idx) = hs(hi);
        A(idx) = rad2deg(ang);
        R(idx) = rad2deg(X0(model.DoFs+1));
        K(idx) = model.K;
        F(idx) = rad2deg(X0(model.DoFs));
        Z(idx) = z(3);
        Xs(idx,:) = X0';
        idx = idx+1;
        if i==1
            y0 = X0;
        end
    end
end
%% make plot
f = fh.pubFig(Size=[16,12],Layout=[2,2]);
[SS,HH] = meshgrid(unique(S),unique(H));
nexttile(1)
idx = ~isnan(R);
contourf(SS,HH,griddata(S(idx),H(idx),R(idx),SS,HH))
colorbar()
xlabel('$\Sigma$')
ylabel('h [mm]')
title('Roll Rate [deg/s]')

nexttile(2)
idx = ~isnan(A);
contourf(SS,HH,griddata(S(idx),H(idx),A(idx),SS,HH))
colorbar()
xlabel('$\Sigma$')
ylabel('h [mm]')
title('Tip Twist [deg]')

nexttile(3)
idx = ~isnan(Z);
contourf(SS,HH,abs(griddata(S(idx),H(idx),Z(idx),SS,HH)))
colorbar()
xlabel('$\Sigma$')
ylabel('h [mm]')
title('Tip Disp. [mm]')

nexttile(4)
idx = ~isnan(F);
contourf(SS,HH,griddata(S(idx),H(idx),F(idx),SS,HH))
colorbar()
xlabel('$\Sigma$')
ylabel('h [mm]')
title('Fold [deg]')

% nexttile(2)
% contourf(S,H,A)
% colorbar()
% xlabel('$\Sigma$')
% ylabel('h [mm]')
% title('Tip Twist [deg]')
% 
% nexttile(3)
% contourf(S,H,Z)
% colorbar()
% xlabel('$\Sigma$')
% ylabel('h [mm]')
% title('Tip Disp. [mm]')
% 
% nexttile(4)
% contourf(S,H,F)
% colorbar()
% xlabel('$\Sigma$')
% ylabel('h [mm]')
% title('Fold [deg]')


%% example
X0 = zeros(model.DoFs*2,1);
model = set_roll_model_params(model,10,g=0,h_b=0.4e-3,c_b=19e-3,...
            sigma=-0.1,rho=Mat.rho*4.8e-3);
model.torque = 0.1;
[X0,deriv] = model.find_equilibrium(X0,0,q_idx=[2,3,4,5],out_idx=5:8);
rad2deg(X0(model.DoFs))
norm(deriv(5:8))