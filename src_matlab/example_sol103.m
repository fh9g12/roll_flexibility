%% Example Execution of a SOL103 solution in MSC Nastran
% model is of a cantilever wing consisting of three rigid sections attached
% together by 2 hinges
% Initial method builds a description of the model using `BAFF`
% (https://github.com/DCRG-Bristol/baff)
%
% in then converts the BAFF model to a nastran model using ADS
% (https://github.com/DCRG-Bristol/ads)
% it then runs a 103 analysis with this model
%
% ADS requires the toolbox Matran to be installed
% (https://github.com/DCRG-Bristol/Matran)
% which handles building the BDF files and can also be used to visualise
% the results

%% Create the BAFF Model
model = FlexiModel();
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

%% Setup 103 Analysis with Nastran
BinFolder = 'ex_ffwt_sol103';
[data,folder_name] = model.Sol103(BinFolder=BinFolder,NumAttempts=1,Silent=false);

%% load Nastran model and plot
f = figure(3);
clf;
nas_model = mni.import_matran(fullfile(char(BinFolder),'Source','sol103.bdf'),'LogFcn',@(a,b,c)fprintf(''));
nas_model.draw(f);

% extract modal data
filename = fullfile(BinFolder,'bin','sol103.h5');
resFile = mni.result.hdf5(filename);
res = resFile.read_modeshapes;

%% plot N'th modeshape
N = 1;
[~,i] = ismember(nas_model.GRID.GID,res(N).IDs);
nas_model.GRID.Deformation = [res(N).EigenVector(i,1:3)]';
nas_model.update()
ax = gca;
ax.Clipping = false;
% ax.ZAxis.Direction = "reverse";
axis equal
% you can clicl things in the legend to hide them and move around the model
% with the mouse

%% animate the Modeshape
%mode number to plot
nas_model.animate(Period=2,Cycles=1,Scale=1);
nas_model.update()

