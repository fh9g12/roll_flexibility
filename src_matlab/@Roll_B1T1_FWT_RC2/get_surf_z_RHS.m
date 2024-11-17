function out = get_surf_z_RHS(p,U,Xb)
	%GET_SURF_Z_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = b_i.^2;
	rep_2 = 1./rep_1;
	rep_3 = sin(U(1));
	rep_4 = cos(U(1));
	rep_5 = -2*U(2).*Xb(2,:) + U(3).*Xb(1,:);
	%% create output vector
	out = [rep_2.*U(3).*Xb(2,:);...
		 rep_2.*(-rep_1.*rep_3 + rep_4.*rep_5);...
		 rep_2.*(rep_1.*rep_4 + rep_3.*rep_5)];
end