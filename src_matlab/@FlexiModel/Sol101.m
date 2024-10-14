function [folder_name,h5_file] = Sol101(obj,opts)
arguments
    obj
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
end
fs = ads.nast.Sol101();
fs.Grav_Vector = obj.GravVector;
obj.ids = fs.UpdateID(obj.ids);
opts_cell = namedargs2cell(opts);
[folder_name] = fs.run(obj.FeModel,opts_cell{:});
h5_file = fullfile(folder_name,"bin","sol101.h5");
end

