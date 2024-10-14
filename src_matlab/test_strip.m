model = NBNT_Strip(15);
dist = model.generate_lift_distribution(); 
model.apply_lift_dist(dist,10,20,1,0);
model.u = 10;
model.alpha_r = 0;
model.g = 0;
model.torque = 0.5;

sigma = 0;
model.K = sqrt(sigma*model.EI*model.GJ);
X0 = zeros(model.DoFs*2,1);
X0(1) = 0;
X0(5) = 10;
model.deriv(0,X0)
model.artifical_damping = 1e-4;


%% run simulation
model.torque = 0.5;
model.g=0;
X0 = zeros(model.DoFs*2,1);
X0(1) = deg2rad(0);
tic;
% opts = odeset('InitialStep',1e-5,'MaxStep',1e-4);
sol = ode45(@(t,y)model.deriv(t,y),[0,10],X0);
toc;

% make figure
f = fh.pubFig(Size=[16,8]);
plot(sol.x,sol.y(1,:))
% plot(sol.x,sol.y(2,:)./max(abs(sol.y(2,:))))
% plot(sol.x,sol.y(3,:)./max(abs(sol.y(3,:))))
plot(sol.x,sol.y(5,:))

%% find eq_pos
model.g = 0;
model.torque = 0.5;
sigma = 0.5;
model.K = sqrt(sigma^2*model.EI*model.GJ);
model.K
X0 = zeros(model.DoFs*2,1);
% X0(1+model.DoFs) = deg2rad(60);
options = optimoptions('fsolve','Algorithm','levenberg-marquardt','Display','off');
q_idx = 2:5;
[delta_q,~,~,~,~] = fsolve(@(x)cost_func(model,x,X0,0,q_idx,2:8),zeros(size(X0(q_idx))),options);

X0(q_idx) = X0(q_idx) + delta_q;
deriv = model.deriv(0,X0);
[X0';deriv']

% [y,deriv] = model.find_equilibrium(X0,0,q_idx=[2,3,4,5],out_idx=5:8)


function V = cost_func(obj,delta_X,y,t,X_idx,out_idx)
y(X_idx) = y(X_idx) + delta_X;
V = obj.deriv(t,y);
V = V(out_idx);
end

%% convert to linear
J = mbd.jacobiancd(@(x)model.deriv(0,x),zeros(10,1));
f_0 = model.deriv(0,zeros(10,1));
tic;
sol_lin = ode45(@(t,y)f_0+J*y,[0,10],zeros(10,1));
toc;

%% do interpolate J
% folds = -90:90;
% Js = zeros(length(folds),10,10);
% fs = zeros(length(folds),10);
% for i = 1:length(folds)
%     y = zeros(10,1);
%     y(5) = deg2rad(folds(i));
%     Js(i,:,:) = mbd.jacobiancd(@(x)model.deriv(0,x),y);
%     fs(i,:) = model.deriv(0,y);
% end
% tic;
% sol_lin2 = ode45(@(t,y)reshape(interp1(folds,fs,y(5),"linear"),10,1)+reshape(interp1(folds,Js,y(5),"linear"),10,10)*y,[0,10],zeros(10,1));
% toc;





%% make plot
figure(1);
clf;
hold on
plot(sol.x,sol.y(5,:))
plot(sol_lin.x,sol_lin.y(5,:))
% plot(sol_lin2.x,sol_lin2.y(5,:))
legend()

% function d = deriv_Js(t,y,Js)
% interp1
% end