function [data,folder_name] = Sol145(obj,Vs,opts,FlutterOpts)
arguments
    obj
    Vs
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
    opts.UseHdf5 = true;
    FlutterOpts.Ks = [];
    FlutterOpts.FlutMethod = 'PK';
    FlutterOpts.Altitude = 0; % altitude in feet to calculate density and Mach number
    
end
% get density and Mach number
[rho,a,~,~,~,~,~] = ads.util.atmos(FlutterOpts.Altitude*0.3048);
if length(FlutterOpts.Altitude) == 1 || length(FlutterOpts.Altitude) == length(Vs)
    M = abs(Vs)./a;
    rho = ones(size(Vs)).*rho;
    FlutterOpts.FlutMethod = 'PKNL';
else
    error('Length of Altiudes must either be one or equal to the lenght of the velocities vector')
end

% set up simulation
fs = ads.nast.Sol145();
fs.FreqRange = [0 300];
fs.LModes = 20;
fs.V = Vs;
fs.Mach = M;
fs.rho = rho;
fs.FlutterMethod = FlutterOpts.FlutMethod;
if ~isempty(FlutterOpts.Ks)
    fs.ReducedFreqs = FlutterOpts.Ks;
end
obj.ids = fs.UpdateID(obj.ids);

% run simulation
opts_cell = namedargs2cell(opts);
[data,folder_name] = fs.run(obj.FeModel,opts_cell{:});
end

