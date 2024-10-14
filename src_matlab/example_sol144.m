%% Example Execution of a SOL144 solution in MSC Nastran
% model is of a cantilever wing consisting of three rigid sections attached
% together by 2 hinges
% Initial method builds a description of the model using `BAFF`
% (https://github.com/DCRG-Bristol/baff)
%
% in then converts the BAFF model to a nastran model using ADS
% (https://github.com/DCRG-Bristol/ads)
% it then runs a 144 analysis with this model
%
% ADS requires the toolbox Matran to be installed
% (https://github.com/DCRG-Bristol/Matran)
% which handles building the BDF files and can also be used to visualise
% the results
% NOTE - positive Z is 'down'

%% Create the BAFF Model
useHdf5 = false;         % if using Nastran 2018 set this to false;

model = FlexiModel();
model.Spans = [0.65	0.15	0.2];
model.BeamMass = [0.351	0.140	0.167];
model.Flares = [20,12];
[feModel,ids,baffModel] = model.gen_feModel();

% plot BAFF model
f = figure(1);
clf;
hold on
baffModel.draw(f);
ax = gca;
ax.Clipping = false;
ax.ZAxis.Direction = "reverse";
axis equal

% plot FE model
f = figure(1);
clf;
hold on
feModel.draw(f);
ax = gca;
ax.Clipping = false;
ax.ZAxis.Direction = "reverse";
axis equal

%% Setup 144 Analysis with Nastran
BinFolder = 'ex_ffwt_sol144';
Vs = 40;
AoA = 4;
% density and mach number calculated according to standard atmossphere internally
[folder_name,h5_file] = model.Sol144(Vs,AoA,Altitude=0,BinFolder=BinFolder,NumAttempts=1,Silent=false,Roll=-360);

%% get fold angles
if useHdf5
    h5_df = mni.result.hdf5(h5_file);
    data = h5_df.read_displacements;
    GIDs = data.GID;
    Rx = data.RX;
else
    f06_df = mni.result.f06(fullfile(folder_name,'bin','sol144.f06'));
    data = f06_df.read_disp;
    GIDs = data.GP;
    Rx = data.thX;
end
for i = 1:2
    inner_ID = feModel.Hinges(i).Points(1).ID;
    outer_ID = feModel.Hinges(i).Points(2).ID;
    hda = rad2deg(Rx(GIDs == inner_ID)); % hinge dihedral angle (dihedral angle of innner wing)
    fold = hda - rad2deg(Rx(GIDs == outer_ID));
    fprintf('\tFold Angle 1 = %.2f deg\n', fold)
end

%% plot results
f = figure(3);
clf;
model = ads.nast.plot.sol144(BinFolder);
model.update('Scale',-1)

