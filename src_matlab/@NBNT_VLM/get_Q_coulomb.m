function Q = get_Q_coulomb(obj,U,t)
%GET_COLOUMB_DAMPING Summary of this function goes here
%   Detailed explanation goes here
Q = zeros(obj.DoFs,1);
if abs(U(end))>1e-3
    Q(end) = -sign(U(end))*obj.coulomb;
else
    Q(end) = -U(end)*obj.coulomb/(1e-3);
end
end

