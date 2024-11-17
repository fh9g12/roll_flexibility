function out = get_hinge_normal_LHS(p,U)
	%GET_HINGE_NORMAL_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = b_i.^(-2);
	rep_2 = y_h.*rep_1;
	rep_3 = sin(U(1));
	rep_4 = cos(U(1));
	%% create output vector
	out = [-rep_2.*U(6);...
		 2*y_h.*rep_1.*rep_4.*U(5) - rep_3;...
		 2*rep_2.*rep_3.*U(5) + rep_4];
end