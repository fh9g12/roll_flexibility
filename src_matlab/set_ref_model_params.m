function obj = set_ref_model_params(obj,flare)
% arguments
%     obj

opts.chord = 0.12;
opts.h_b = 4e-3;
opts.E = 200e9;
opts.pr = 0.282;
opts.Flare = flare;
% end
%NBNT_MODEL Construct an instance of this class
%   Detailed explanation goes here
obj.Lambda = deg2rad(opts.Flare);
obj.b_i = 0.765;
obj.y_h = obj.b_i + 0.035 + opts.chord/4*tan(obj.Lambda);
obj.g = 9.81;
obj.g_v = [0, 0, 1];
obj.rho_b = 7720*opts.h_b;      % beam density per unit area
obj.c_b = 30e-3;       % chord of beam
obj.EI = obj.c_b*opts.h_b^3/12*opts.E;
obj.GJ = ((obj.c_b*opts.h_b^3/12) + (obj.c_b^3*opts.h_b/12)) * opts.E/(2*(1+opts.pr));
obj.m_s = 75e-3;
obj.I_s = [82, 73, 151]*1e-6;
obj.x_s = -21e-3;
obj.y_s = cumsum([100,ones(1,4)*140])*1e-3;
obj.m_h = 56e-3;
obj.I_h = [26, 32, 56]*1e-6;
obj.X_h = [-17, 767, 0]*1e-3;
obj.k_h = 1e-4;
obj.d_h = 0;
obj.m_f = 167e-3;
obj.I_f = [942, 122, 1057]*1e-6;
obj.X_f = [-22e-3, 87e-3-opts.chord/4*tan(obj.Lambda), 0];
end

