function out = get_surf_z_LHS(p,U,Xb)
	%GET_SURF_Z_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = U(12).*Xb(2,:);
	rep_3 = cos(U(1));
	rep_4 = b_i.^4;
	rep_5 = 1./rep_4;
	rep_6 = b_i.^2.*(U(11).*Xb(1,:) - 2*U(8).*Xb(2,:)) - b_i.*(-2*U(12).*Xb(1,:) + 3*U(9).*Xb(2,:)).*Xb(2,:) - 4*U(10).*Xb(2,:).^3;
	%% create output vector
	out = [(b_i.*U(11) + rep_1.^2.*rep_2 + rep_2.*rep_3.^2).*Xb(2,:)./b_i.^3;...
		 rep_5.*(-rep_1.*rep_4 + rep_3.*rep_6);...
		 rep_5.*(rep_1.*rep_6 + rep_3.*rep_4)];
end