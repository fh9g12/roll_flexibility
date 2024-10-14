function [gust_data,folder_name] = Sol146(obj,Vs,opts,GustOpts)
arguments
    obj
    Vs
    opts.BinFolder = ""
    opts.NumAttempts = 3
    opts.Silent = true;
    opts.UseHdf5 = true;
    GustOpts.Freqs = [2,4,6];
    GustOpts.Amp = -0.5;
    GustOpts.Altitude = 0; % altitude in feet to calculate density and Mach number
end
% get density and Mach number
[rho,a,~,~,~,~,~] = ads.util.atmos(GustOpts.Altitude*0.3048);
M = abs(Vs)./a;

% get important IDs
%generate model
idx = [obj.FeModel.Constraints.Tag] == "Root Connection";
ID = [obj.FeModel.Constraints(idx).ID];
h_idx = [obj.FeModel.Points([obj.FeModel.Points.Tag]=="Hinge1").ID];

Delay = 1;            
% set up simulation
%generate gust cards
sol = ads.nast.Sol146(obj.FeModel.Constraints(ID));
sol.FreqRange = [0 50];
sol.set_trim_locked(Vs,rho,M);

% gust setup
sol.GustDuration = 5;
sol.GustTstep = 0.01;
sol.NFreq = 600;
sol.DispIDs = [];
sol.ForceIDs = [];
sol.ModalDampingPercentage = 0;
idx = 1;

for i = 1:length(GustOpts.Freqs)
    sol.Gusts(idx) = ads.nast.gust.OneMC(GustOpts.Amp,nan,GustOpts.Freqs(i),'Freq');
    sol.Gusts(idx).Tdelay = 1;
    idx = idx+1;
end
for i = 1:length(sol.Gusts)
    sol.Gusts(i).set_params(Vs,alt=GustOpts.Altitude);
end
sol.UpdateID(obj.ids);

[folder_name] = sol.run(obj.FeModel,"BinFolder",opts.BinFolder,"Silent",true,"NumAttempts",1);
gust_h5 = mni.result.hdf5(fullfile(folder_name,'bin','sol146.h5'));
dyn_data = gust_h5.read_dynamic();
%% convert data to better format
gust_data = [];
for j = 1:length(dyn_data)
    tmp_res = struct();
    tmp_res.V = Vs;
    tmp_res.Freq = GustOpts.Freqs(j);
    tmp_res.Amp = GustOpts.Amp;
    tmp_res.t = dyn_data(j).t-Delay;
    %get fold angle
    d_idx = ismember(dyn_data(j).Displacement.IDs,h_idx);
    rot = dyn_data(j).Displacement.RX(:,d_idx);
    tmp_res.Fold = rad2deg(rot(:,2)-rot(:,1));
    %get wrbm
    if isfield(dyn_data(j),'BeamForce')
        tmp_res.BeamForce = dyn_data(j).BeamForce;
    else
        tmp_res.BeamForce = nan;
    end
    %record data
    gust_data = farg.struct.concat(gust_data,tmp_res);
end
end

