function update_beam_props(obj,h_b,c_b,Sigma)
%UPDATE_BEAM_PROPS Summary of this function goes here
%   Detailed explanation goes here
obj.h_b = h_b;
obj.c_b = c_b;
obj.Sigma = Sigma;
obj.EI = obj.c_b*obj.h_b^3/12*obj.Mat.E;
obj.GJ = ((obj.c_b*obj.h_b^3/12) + (obj.c_b^3*obj.h_b/12)) * obj.Mat.E/(2*(1+obj.Mat.nu));
obj.K = sign(Sigma)*sqrt(Sigma^2*obj.EI*obj.GJ);

if obj.ConstantDensity
    obj.rho_b = obj.Mat.rho*1e-3;      % beam linear density per unit area
else
    obj.rho_b = obj.Mat.rho*obj.h_b;
end
end

