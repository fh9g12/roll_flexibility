classdef FlexiModel <handle
    %REFMODEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Spans = [0.8,0.1,0.1];            % span of each section
        isStiff = [true,true,true]  % toggles if each section is modelled as stiff
        BeamEles = [20,5,6]          % beam elements in each section
        BeamMass = [0.008+0.426,0.114,0.114];         % mass of each beam
        Flares = [15,7];           % flare angle of each section
        HingeStiffness = [1e-4];
        isLocked = false;
        isRemoved = false;


        Chord = 0.12;               
        nChord = 5;                 % chordwise panels for DLM
        PanelAspectRatio = 0.5;       % aspect ratio of DLM Panels
      
        %bar properties
        BeamChordwisePos = 0.25;
        BeamThickness = 4e-3;
        BeamWidth = 30e-3;
        BeamMaterial = baff.Material.Stainless316();

        %AileronSettings
        AilEtas = [0.7 0.9];
        Ail_pChord = 0.35;
        
        %FeModel
        FeModel ads.fe.Component;
        ids ads.fe.IDs;
    end

    properties(Dependent)
        GravVector
    end
    methods
        function val = get.GravVector(obj)
            val = [0;0;1];
        end
    end
    
    methods
        function obj = FlexiModel()
        end
    end
end

