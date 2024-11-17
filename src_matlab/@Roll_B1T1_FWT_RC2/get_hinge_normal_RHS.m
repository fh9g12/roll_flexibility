function out = get_hinge_normal_RHS(p,U)
	%GET_HINGE_NORMAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h./b_i.^2;
	rep_2 = sin(U(1));
	rep_3 = cos(U(1));
	rep_4 = 2*rep_1.*U(2);
	%% create output vector
	out = [rep_1.*U(3);...
		 -rep_2 - rep_3.*rep_4;...
		 -rep_2.*rep_4 + rep_3];
end