function [folder_name,h5_file] = Divergence(obj,V,opts,ModelOpts)
arguments
    obj
    V
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
    opts.UseHdf5 = true;
    ModelOpts.Altitude = 0; % altitude in feet to calculate density and Mach number
end
% get density and Mach number
[rho,a,~,~,~,~,~] = ads.util.atmos(ModelOpts.Altitude*0.3048);
M = V./a;

% set up simulation
NRoots = 3;
fs = ads.nast.Divergence(M,NRoots);
obj.ids = fs.UpdateID(obj.ids);

% run simulation
opts_cell = namedargs2cell(opts);
[folder_name] = fs.run(obj.FeModel,opts_cell{:});
h5_file = fullfile(folder_name,"bin","sol144_div.h5");
end
