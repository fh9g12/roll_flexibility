function [feModel,ids,baffModel] = gen_feModel(obj)
arguments
    obj FlexiModel
end

%% Root Constraint
con = baff.Constraint("ComponentNums",123456,"Eta",0,"Name","Root Connection");

for i = 1:length(obj.Spans)
    if obj.isStiff(i)
        beamMat = baff.Material.Stiff;
    else
        beamMat = obj.BeamMaterial;
    end
    NextBeam = baff.Wing.UniformWing(obj.Spans(i),obj.BeamThickness,obj.BeamWidth...
    ,beamMat,obj.Chord,obj.BeamChordwisePos);
    NextBeam.Stations = NextBeam.Stations.interpolate(linspace(0,1,obj.BeamEles(i)+1));
    NextBeam.DistributeMass(obj.BeamMass(i),obj.BeamEles(i)+1);
    NextBeam.Name = 'InnerBeam';
    
    if i == 1
        NextBeam.A = ads.util.rotz(90)*ads.util.rotx(180);
        con.add(NextBeam);
    else
        % create hinge
        hinge = baff.Hinge();
        hinge.HingeVector = ads.util.rotz(-obj.Flares(i-1))*[0;1;0];
        hinge.K = obj.HingeStiffness(i-1);
        hinge.C = 0;
        hinge.Rotation = 0;
        hinge.isLocked = false;
        hinge.Eta = 1;          % normalised location of beam along parent object
        hinge.Offset = [0 0 0];
        hinge.Name = sprintf('Hinge%.0f',i-1);
        LastBeam.add(hinge);
        hinge.add(NextBeam);
    end
    LastBeam = NextBeam;
end

% create baff model
baffModel = baff.Model();
baffModel.Name = "FlexiWing";
baffModel.AddElement(con);

% generate final model
baffOpts = ads.baff.BaffOpts();
baffOpts.SplitBeamsAtChildren = false;
feModelFull = ads.baff.baff2fe(baffModel,baffOpts);

% Add Aero Settings
feModel = feModelFull.Flatten;
feModel.CoordSys(end+1) = ads.fe.CoordSys(Origin=[0;0;0],A=ads.util.rotz(180));
feModel.AeroSettings(1) = ads.fe.AeroSettings(obj.Chord,1,sum(obj.Spans)*2,...
    obj.Chord*sum(obj.Spans),ACSID=feModel.CoordSys(end),SymXZ=true);

%% update splining stratergies
for i = 1:length(feModel.AeroSurfaces)
    feModel.AeroSurfaces(i).SplineType = 4;
    feModel.AeroSurfaces(i).AeroCoordSys = feModel.CoordSys(end);
    feModel.AeroSurfaces(i).SetPanelNumbers(obj.nChord,obj.PanelAspectRatio,"Span");
end

%% sort output
ids = feModel.UpdateIDs();
obj.FeModel = feModel;
obj.ids = ids;
end

