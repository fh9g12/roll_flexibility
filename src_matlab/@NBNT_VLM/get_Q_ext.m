function [out] = get_Q_ext(p,U,t)
%GET_AERO_Q Summary of this function goes here
%   Detailed explanation goes here
out = get_art_damping(p,U,t) + p.get_ail_torque(U,t);
if p.u > 0
    out = out + get_Q_aero(p,U,t);
end
if p.TipForce~=0
    out = out + p.get_inner_Q(U,[0;0;p.TipForce;0;0;0],[0;p.innerSpan;0]);
end
end

