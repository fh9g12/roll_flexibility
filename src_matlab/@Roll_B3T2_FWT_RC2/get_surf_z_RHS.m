function out = get_surf_z_RHS(p,U,Xb)
	%GET_SURF_Z_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = U(6).*Xb(2,:);
	rep_3 = cos(U(1));
	rep_4 = b_i.^4;
	rep_5 = 1./rep_4;
	rep_6 = b_i.^2.*(-2*U(2).*Xb(2,:) + U(5).*Xb(1,:)) - b_i.*(3*U(3).*Xb(2,:) - 2*U(6).*Xb(1,:)).*Xb(2,:) - 4*U(4).*Xb(2,:).^3;
	%% create output vector
	out = [(b_i.*U(5) + rep_1.^2.*rep_2 + rep_2.*rep_3.^2).*Xb(2,:)./b_i.^3;...
		 rep_5.*(-rep_1.*rep_4 + rep_3.*rep_6);...
		 rep_5.*(rep_1.*rep_6 + rep_3.*rep_4)];
end