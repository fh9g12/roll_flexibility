function out = get_fwt_normal(p,U)
	%GET_FWT_NORMAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(4));
	rep_2 = y_h.*U(3);
	rep_3 = sin(rep_2);
	rep_4 = 2*y_h.*U(2);
	rep_5 = cos(rep_4);
	rep_6 = sin(U(4));
	rep_7 = sin(Lambda);
	rep_8 = cos(rep_2);
	rep_9 = sin(rep_4);
	rep_10 = cos(Lambda);
	rep_11 = rep_10.*rep_9;
	rep_12 = cos(U(1));
	rep_13 = sin(U(1));
	rep_14 = rep_5.*rep_8;
	rep_15 = rep_10.*rep_5;
	rep_16 = rep_11.*rep_8 + rep_3.*rep_7;
	%% create output vector
	out = [rep_1.*rep_3.*rep_5 - rep_6.*(-rep_11.*rep_3 + rep_7.*rep_8);...
		 -rep_1.*(rep_12.*rep_9 + rep_13.*rep_14) - rep_6.*(-rep_12.*rep_15 + rep_13.*rep_16);...
		 -rep_1.*(-rep_12.*rep_14 + rep_13.*rep_9) + rep_6.*(rep_12.*rep_16 + rep_13.*rep_15)];
end