function out = get_fwt_A(p,U)
	%GET_FWT_A Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = cos(rep_1);
	rep_3 = sin(rep_1);
	rep_4 = 2*y_h.*U(2);
	rep_5 = sin(rep_4);
	rep_6 = cos(rep_4);
	rep_7 = sin(U(1));
	rep_8 = cos(U(1));
	rep_9 = rep_5.*rep_7;
	rep_10 = rep_5.*rep_8;
	rep_11 = rep_6.*rep_7;
	%% create output vector
	out = [rep_2 rep_3.*rep_5 rep_3.*rep_6;...
		 rep_3.*rep_7 -rep_2.*rep_9 + rep_6.*rep_8 -rep_10 - rep_11.*rep_2;...
		 -rep_3.*rep_8 rep_10.*rep_2 + rep_11 rep_2.*rep_6.*rep_8 - rep_9];
end