function [out] = get_ail_torque(p,U,t)
%GET_ART_DAMPING Summary of this function goes here
out = [p.torque;zeros(p.DoFs-1,1)];
end

