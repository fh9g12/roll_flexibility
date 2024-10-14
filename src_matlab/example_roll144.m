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
useHdf5 = true;         % if using Nastran 2018 set this to false;
model = FlexiModel();
model.Spans = [0.364 0.5-0.364];
model.BeamMass = [0.140	0.05];
model.Flares = [10];
model.HingeStiffness = [1e-4];
model.isStiff = [true,true];

model.BeamThickness = 1e-3;
model.BeamWidth = 20e-3;
model.BeamMaterial = baff.Material.Aluminium;
model.BeamChordwisePos = 0.25;
model.Chord = 0.067;
model.isLocked = false;
model.isRemoved = false;
model.nChord = 10;

model.AilEtas = [0.1 0.9];  % normalised postion of the start and end of the aileron on the inner wing section
model.Ail_pChord = 0.35; % chordwise percentage fo the control surface

[feModel,ids,baffModel] = model.gen_feModel_fullSpan();

% plot BAFF model
f = figure(1);
clf;
hold on
baffModel.draw(f);
ax = gca;
ax.Clipping = false;
ax.ZAxis.Direction = "reverse";
axis equal
view(90,90)

% plot FE model
f = figure(2);
clf;
hold on
feModel.draw(f);
ax = gca;
ax.Clipping = false;
ax.ZAxis.Direction = "reverse";
axis equal

%% Setup 144 Analysis with Nastran
BinFolder = 'ex_ffwt_sol144';
% density and mach number calculated according to standard atmossphere internally


% set desired Roll angle or Aileron deflection, the dependent variable must
% be set to NaN
Vs = 30;
AoA = 0;
Roll = nan;
AilDeflection = -10;
g = 0; % Accel due to gravity

[folder_name,h5_file] = model.Roll144(Vs,AoA,Altitude=0,BinFolder=BinFolder,NumAttempts=1,Silent=false,Roll=Roll,AilDeflection=AilDeflection,g=g);

%% get fold angles
if useHdf5
    h5_df = mni.result.hdf5(h5_file);
    if model.isLocked
        fold_angles = [0,0];
    else
    fold_angles = rad2deg([1 -1].*h5_df.read_force_BUSH.Mx'./repmat(model.HingeStiffness,1,2));
    end
    trim_res = h5_df.read_trim;
else
    f06_df = mni.result.f06(fullfile(folder_name,'bin','sol144.f06'));
    if model.isLocked
        fold_angles = [0,0];
    else
        fold_angles = rad2deg([1 -1].*f06_df.read_force_CBUSH.Mx./repmat(model.HingeStiffness,1,2));
    end
    trim_res = f06_df.read_trimDOFs
end

%% plot results
f = figure(3);
clf;
mm = ads.nast.plot.sol144(BinFolder);
mm.update('Scale',-1)

%% res
rad2deg(trim_res.ROLL)