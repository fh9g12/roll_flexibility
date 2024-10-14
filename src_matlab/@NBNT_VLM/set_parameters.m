function set_parameters(obj,params)
obj.u = params(1);
%set Sweep / Flare Angle
if obj.Sweep ~= params(6) || obj.Lambda~=deg2rad(params(7))
    obj.Sweep = params(6);
    obj.Lambda = deg2rad(params(7)+params(6));
    obj.y_h = obj.b_i + obj.chord/4*tan(obj.Lambda);
    obj.innerSpan = obj.y_h;
    obj.X_f = [-obj.chord/4, (obj.semiSpan-obj.b_i)/2-obj.chord/4*tan(obj.Lambda), 0];
    obj.generate_vlm_model()
end
%set aileron
obj.vlm.Wings{1}.Sections{1}.Normalwash(obj.vlm.Wings{1}.Sections{1}.isTE) = deg2rad(params(2));
%set root torque
obj.torque = params(3);
%set beam thickness + bend_twist-coupling
obj.update_beam_props(params(4),obj.c_b,params(5))
end


