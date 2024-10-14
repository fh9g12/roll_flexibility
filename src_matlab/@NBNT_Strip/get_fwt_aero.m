function [Q,alpha,L] = get_fwt_aero(p,U,t)
%GET_MAIN_AERO_Q Summary of this function goes here
%   Detailed explanation goes here
N = p.fwt_N;
pos = p.fwt_pos;
C_l = p.fwt_Cl;
Qs = zeros(length(U)/2,p.fwt_N);
alpha = zeros(N,1);
L = zeros(N,1);
A = p.get_fwt_A(U);
V_air = A'*p.get_air_velocity(t);
for i = 1:N
    V_eff = V_air + p.get_fwt_V_b(U,pos(:,i));
    V_eff(2,:) = 0;
    if V_eff(1,:) ~= 0
        alpha(i) = atan(V_eff(3)/V_eff(1)) + p.fwt_aoa_0;
    end
    L(i) = 0.5*1.225.*(V_eff'*V_eff).*(p.fwt_c(i)*p.fwtSpan/N).*C_l(i).*alpha(i);
    W = [0,0,-L(i),0,0,0]';
    Qs(:,i) = p.get_fwt_Q(U,W,pos(:,i));
end
Q = sum(Qs,2);
end

