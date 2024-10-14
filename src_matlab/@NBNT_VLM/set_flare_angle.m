function set_flare_angle(obj,flare_angle)
%SET_FLARE_ANGLE Summary of this function goes here
%   Detailed explanation goes here
if deg2rad(flare_angle) ~= obj.Lambda
    set_ref_model_params(obj,flare_angle)
    obj.generate_vlm_model();
end
end

