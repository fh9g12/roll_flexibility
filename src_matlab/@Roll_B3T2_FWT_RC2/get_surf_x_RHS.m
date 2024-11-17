function out = get_surf_x_RHS(p,U,Xb)
	%GET_SURF_X_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = b_i.^(-3);
	rep_3 = b_i.^(-2);
	rep_4 = Xb(2,:).^2;
	rep_5 = rep_2.*U(3).*Xb(2,:).^3 + rep_3.*rep_4.*U(2) + U(4).*Xb(2,:).^4./b_i.^4;
	rep_6 = -rep_2.*rep_4.*U(6) - rep_3.*U(5).*Xb(2,:) + rep_5;
	rep_7 = cos(U(1));
	%% create output vector
	out = [0.*Xb(1,:) + 1;...
		 rep_1.*rep_5 - rep_1.*rep_6;...
		 -rep_5.*rep_7 + rep_6.*rep_7];
end