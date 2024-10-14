function [folder_name,h5_file] = Sol144(obj,V,aoa,opts,ModelOpts)
arguments
    obj
    V
    aoa
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
    opts.UseHdf5 = true;
    ModelOpts.OutputAeroMatrices logical = true;
    ModelOpts.Altitude = 0; % altitude in feet to calculate density and Mach number
    ModelOpts.Roll = 0;
end
% get density and Mach number
[rho,a,~,~,~,~,~] = ads.util.atmos(ModelOpts.Altitude*0.3048);
M = V./a;

% set up simulation
fs = ads.nast.Sol144();
fs.FreqRange = [0 300];
fs.LModes = 20;
fs.set_trim_locked(V,rho,M);
fs.ANGLEA.Value = deg2rad(aoa);
fs.ROLL.Value = deg2rad(ModelOpts.Roll);
fs.Grav_Vector = obj.GravVector;
fs.OutputAeroMatrices = ModelOpts.OutputAeroMatrices;
obj.ids = fs.UpdateID(obj.ids);

% run simulation
opts_cell = namedargs2cell(opts);
[folder_name] = fs.run(obj.FeModel,opts_cell{:});
h5_file = fullfile(folder_name,"bin","sol144.h5");
end
