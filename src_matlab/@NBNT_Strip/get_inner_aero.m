function [Q] = get_inner_aero(p,U,t) %#codegen
%GET_MAIN_AERO_Q Summary of this function goes here
%   Detailed explanation goes here
N = p.inner_N;
pos = p.inner_pos;
C_l = p.inner_Cl;
Qs = zeros(length(U)/2,N);
alpha = zeros(1,N);
L = zeros(1,N);
A = p.get_body_A(U);
V_air = A'*p.get_air_velocity(t);
for i = 1:size(pos,2) 
    V_eff = V_air + p.get_inner_V_b(U,pos(:,i));
    
    % get lift
    V_eff(2,:) = 0;
    if V_eff(1,:) ~= 0
        alpha(i) = real(atan(V_eff(3,:)./V_eff(1,:))) + p.inner_aoa_0;
    end
    L(i) = 0.5*1.*(V_eff'*V_eff).*(p.inner_c(i)*p.innerSpan/N).*C_l(i).*alpha(i);
    W = [0,0,-L(i),0,0,0]';
    Qs(:,i) = p.get_inner_Q(U,W,pos(:,i));
%     Qs(:,i) = p.G(:,:,i)'*W;
end
Q = sum(Qs,2);
end
