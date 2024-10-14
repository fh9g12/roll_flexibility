function out = get_fwt_A(p,U)
	%GET_FWT_A Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = cos(rep_2);
	rep_4 = sin(rep_2);
	rep_5 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_1.*U(3);
	rep_6 = sin(rep_5);
	rep_7 = cos(rep_5);
	rep_8 = sin(U(1));
	rep_9 = cos(U(1));
	rep_10 = rep_6.*rep_8;
	rep_11 = rep_6.*rep_9;
	rep_12 = rep_7.*rep_8;
	%% create output vector
	out = [rep_3 rep_4.*rep_6 rep_4.*rep_7;...
		 rep_4.*rep_8 -rep_10.*rep_3 + rep_7.*rep_9 -rep_11 - rep_12.*rep_3;...
		 -rep_4.*rep_9 rep_11.*rep_3 + rep_12 -rep_10 + rep_3.*rep_7.*rep_9];
end