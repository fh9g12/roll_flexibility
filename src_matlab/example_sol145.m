%% Example Execution of a SOL145 solution in MSC Nastran
% model is of a cantilever wing consisting of three sections attached
% together by 2 hinges
% the first section is modelled as flexible and the last two are modelled
% as rigid.
% Initial method builds a description of the model using `BAFF`
% (https://github.com/DCRG-Bristol/baff)
%
% in then converts the BAFF model to a nastran model using ADS
% (https://github.com/DCRG-Bristol/ads)
% it then runs a 145 analysis with this model
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
model.HingeStiffness = [1e-4,1e-4];
model.isStiff = [false,true,true];


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

%% Setup 145 Analysis with Nastran
BinFolder = 'ex_ffwt_sol145';
Vs = linspace(0.1,50,101);
% density and mach number calculated according to standard atmossphere internally
[data,folder_name] = model.Sol145(Vs,Altitude=0,BinFolder=BinFolder,NumAttempts=1,Silent=false,UseHdf5=useHdf5);

%% plot flutter
figure(9);
clf;
tiledlayout(2,1);
nexttile(1);
ads.nast.plot.flutter(data,NModes=4,XAxis='V',YAxis='F');
nexttile(2);
ads.nast.plot.flutter(data,NModes=4,XAxis='V',YAxis='D');
% ylim([-0.1e-8,0.1e-8])
% ylim([-0.5,1.25])

% save('data_ref_wing_FTT.mat','data');