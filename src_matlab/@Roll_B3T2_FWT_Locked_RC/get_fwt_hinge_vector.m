function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(5) + rep_2.*U(6);
	rep_4 = cos(rep_3);
	rep_5 = sin(Lambda);
	rep_6 = sin(rep_3);
	rep_7 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_2.*U(3);
	rep_8 = sin(rep_7);
	rep_9 = sin(U(1));
	rep_10 = rep_1.*rep_6;
	rep_11 = cos(U(1));
	rep_12 = cos(rep_7);
	rep_13 = rep_4.*rep_8;
	%% create output vector
	out = [rep_1.*rep_4 + rep_5.*rep_6.*rep_8;...
		 rep_10.*rep_9 + rep_5.*(rep_11.*rep_12 - rep_13.*rep_9);...
		 -rep_10.*rep_11 + rep_5.*(rep_11.*rep_13 + rep_12.*rep_9)];
end