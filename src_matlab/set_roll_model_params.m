function obj = set_roll_model_params(obj,flare,opts)

arguments
    obj 
    flare 
    opts.c_b = 20e-3;       % chord of beam
    opts.h_b = 5e-3;        % height of beam
    opts.Mat = baff.Material.Aluminium;
    opts.sigma = 0;

    opts.chord = 0.067;
    opts.g = 9.81;
    opts.Span = 1;
    opts.HingeEta = 0.8;
end

obj.chord = opts.chord;
obj.update_beam_props(opts.h_b,opts.c_b,opts.sigma);
% obj.K = sqrt(opts.sigma^2*obj.EI*obj.GJ);
%NBNT_MODEL Construct an instance of this class
%   Detailed explanation goes here
obj.Lambda = deg2rad(flare);
obj.b_i = opts.Span*opts.HingeEta/2;
obj.y_h = obj.b_i + opts.chord/4*tan(obj.Lambda);
obj.g = opts.g;
obj.g_v = [0, 0, 1];

obj.m_s = 33e-3*(obj.b_i*opts.chord)/(0.36*0.067);
obj.I_s = [0 0 0]*1e-6;
obj.x_s = -opts.chord/4;
obj.y_s = [0.25 0.5 0.75]*obj.b_i;

obj.m_h = 19e-3;
obj.I_h = [0, 0, 0];
obj.X_h = [-opts.chord/4, obj.b_i, 0];
obj.k_h = 0;
obj.d_h = 0;

obj.m_f = 50e-3*(opts.Span/2*(1-opts.HingeEta)*opts.chord)/(0.14*0.067);
obj.I_f = [0, 0, 0]*1e-6;
obj.X_f = [-opts.chord/4, (opts.Span/2-obj.b_i)/2-opts.chord/4*tan(obj.Lambda), 0];


obj.semiSpan = opts.Span/2;
obj.innerSpan = obj.y_h;
obj.fwtSpan = obj.semiSpan - obj.innerSpan;

% panel densities
obj.MinSpan = [obj.innerSpan/20,obj.fwtSpan/10];

end

