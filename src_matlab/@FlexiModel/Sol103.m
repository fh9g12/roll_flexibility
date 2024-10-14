function [data,folder_name] = Sol103(obj,opts)
arguments
    obj
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
end

% set up simulation
fs = ads.nast.Sol103();
fs.FreqRange = [0 400];
fs.LModes = 20;
fs.Grav_Vector = obj.GravVector;
fs.UpdateID(obj.ids);

% run simulation
opts_cell = namedargs2cell(opts);
[data,folder_name] = fs.run(obj.FeModel,opts_cell{:});
end

