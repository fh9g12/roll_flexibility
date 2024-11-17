function out = get_surf_x_LHS(p,U,Xb)
	%GET_SURF_X_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = b_i.^(-2);
	rep_3 = Xb(2,:).^2;
	rep_4 = rep_2.*rep_3.*U(5);
	rep_5 = -rep_2.*U(6).*Xb(2,:) + rep_4;
	rep_6 = cos(U(1));
	%% create output vector
	out = [0.*Xb(1,:) + 1;...
		 rep_1.*rep_2.*rep_3.*U(5) - rep_1.*rep_5;...
		 -rep_4.*rep_6 + rep_5.*rep_6];
end