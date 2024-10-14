classdef NBNT_VLM < Roll_B3T2_FWT_RC
    properties(Constant)
        SuperClass = 'BNTN_FWT_RC_VLM';
    end
    properties
        root_y = 0;
        semiSpan;
        innerSpan;
        fwtSpan;
        chord;
        Downwash = 0;
        Name = '';
        Sidewash = 0;
        updateAIC = true;
        torque = 0;
        TipForce = 0;
        ToStitch = false;
    end
    properties
       u = 0;
       v = 0;
       w = 0;
       rho = 1.225;
       alpha_r = 0;
       beta_r = 0;
       artifical_damping = 0;
       y_0_aero = 0

       h_b = 5e-3;
       Mat = baff.Material.Aluminium;
       Sigma = 0;
       ConstantDensity = true;

       Sweep = 0;
       NoTorque = false;
       InnerNodes;
       FwtNodes;
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
        vlm;
        gap = 0;
        dCl = 1;
        nChord = 4;
        MinSpan;
    end
    methods
        function s = ToStruct(obj)
            s = struct(obj);
            s = rmfield(s,'vlm');
            s = rmfield(s,'gust_ti');
            s = rmfield(s,'gust_Vi');
        end
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
        function obj = NBNT_VLM()
            SC = superclasses(obj);
            obj.Name = SC{1};
        end
    end
    methods(Static)
        function base_class = ChangeBaseClass(base_class)
            fname = [mfilename('fullpath'),'.m'];
            %get data in class file
            fid = fopen(fname);
            tline = fgets(fid);
            index = 1; 
            while ischar(tline)
                data{index} = tline;     
                tline = fgets(fid);         
                index = index + 1;
            end
            fclose(fid);
            % replace first row
            data{1,1} = ['classdef NBNT_VLM < ',base_class,newline];
            % write back to file
            fidOut = fopen(fname,'w');
            for l = data
                fprintf(fidOut,'%s', l{1,1});
            end
            fclose(fidOut);
        end
    end
end

