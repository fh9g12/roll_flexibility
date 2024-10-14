function [folder_name,h5_file] = Roll144(obj,V,aoa,opts,ModelOpts)
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
    ModelOpts.AilDeflection = NaN;
    ModelOpts.g = 9.81;

end

if isnan(ModelOpts.Roll) && isnan(ModelOpts.AilDeflection)
    error('Either Roll or aileron deflection must be set to a non-zero value to generate a valid trim problem')
elseif ~isnan(ModelOpts.Roll) && ~isnan(ModelOpts.AilDeflection)
    error('Either Roll or aileron deflection must be set to a NaN (e.g. "free") to generate a valid trim problem')
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
fs.Grav_Vector = obj.GravVector;
fs.g = ModelOpts.g;

fs.isFree = true;
fs.CoM = obj.FeModel.Constraints(1);

fs.DoFs = 4;
fs.ROLL.Value = deg2rad(ModelOpts.Roll);

% set control surface deflection (NaN means its manualy set during trim)
obj.FeModel.ControlSurfaces(1).Deflection = deg2rad(ModelOpts.AilDeflection);

fs.OutputAeroMatrices = ModelOpts.OutputAeroMatrices;
obj.ids = fs.UpdateID(obj.ids);

% run simulation
opts_cell = namedargs2cell(opts);
[folder_name] = fs.run(obj.FeModel,opts_cell{:});
h5_file = fullfile(folder_name,"bin","sol144.h5");
end