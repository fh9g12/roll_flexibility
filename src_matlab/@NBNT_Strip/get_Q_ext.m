function [out] = get_Q_ext(p,U,t)
%GET_AERO_Q Summary of this function goes here
%   Detailed explanation goes here
if p.u == 0
    out = get_art_damping(p,U,t) + get_ail_torque(p,U,t);
else
    out = get_inner_aero(p,U,t) + get_fwt_aero(p,U,t) + get_art_damping(p,U,t) + get_ail_torque(p,U,t);
end
end

