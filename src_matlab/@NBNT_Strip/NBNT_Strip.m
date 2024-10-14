classdef NBNT_Strip < B1T1_FWT_RC
% classdef NBNT_Strip < B1T1_FWT_Locked_RC
    properties
        %         DoFs = 5;
        fwtSpan = 0.2;
        chord = 0.12;
        semiSpan = 1;
        innerSpan = 0.8;
    end
    properties
        u = 0;
        v = 0;
        w = 0;
        alpha_r = 0;
        beta_r = 0;
        artifical_damping = 0;
        y_0_aero = 0
        G;
        torque=0;
    end
    properties(Hidden)
        gust = false;
        gust_length = 0;
        gust_amplitude = [0;0;0];
        gust_t1 = 0;
        gust_t2 = 0;
        gust_freq = 0;
        gust_period = 0;
    end
    properties
        gust_UseTimeSeries = false;
        gust_ti = [0,1];
        gust_Vi = zeros(2,3);
    end
    %Aero
    properties
        inner_N;
        inner_pos;
        inner_Cl;
        inner_c;
        inner_aoa_0;
        fwt_N;
        fwt_pos;
        fwt_Cl;
        fwt_aoa_0;
        fwt_c;
    end
    methods
        function obj = add_artifical_damping(obj,damping)
            obj.artifical_damping = damping;
        end
        function set_gust(obj,f,amp,delay)
            obj.gust_t1 = delay;
            obj.gust_t2 = delay + 1/f;
            obj.gust_amplitude = [0;0;amp];
            obj.gust_freq = f;
        end
    end
    methods
        function obj = NBNT_Strip(flare_angle)
%             arguments
%                 flare_angle (1,1) double
%                 c = 0.12;
%             end
            obj = set_ref_model_params(obj,flare_angle);
            obj.chord = 0.12;
            obj.semiSpan = 1;
            obj.fwtSpan = 0.2;
        end
    end
end


