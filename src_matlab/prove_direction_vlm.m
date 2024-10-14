% clc;
model = NBNT_VLM.ChangeBaseClass('B3T2_FWT_Locked_RC');
model = NBNT_VLM();
model = set_roll_model_params(model,10,g=0,Span=1,chord=0.1,sigma=-0.5);
model.nChord = 4;
model.ToStitch = false;
model.gap = 0.0;
model.alpha_r = 1;
model.generate_vlm_model(VDir=[-1;0;0]);
model.updateAIC = false;

params = [30,0,0,4*1e-3,0,20,20]; % U, Ail, Torque, thickness, sigma, sweep, Flare;
p_names = ["U", "Ail", "Torque", "h", "Sigma", "sweep","Flare"];
model.set_parameters(params)

% model.TipForce = -35;  
q_idx=2:(model.DoFs+1);
out_idx=model.DoFs+1:model.DoFs*2;
U = model.find_equilibrium(zeros(model.DoFs*2,1),0,q_idx=q_idx,out_idx=out_idx);

U = zeros(model.DoFs*2,1);
% U(model.DoFs+1) = deg2rad(60);
% U(2) = -1;
% model.alpha_r = 0;
model.u = 20;

model.deriv(0,U);
f = figure(1);clf;model.vlm.draw(param='Cp');axis equal
ax = gca;
ax.ZAxis.Direction = "reverse";