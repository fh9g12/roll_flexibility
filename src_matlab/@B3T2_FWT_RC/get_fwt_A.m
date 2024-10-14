function out = get_fwt_A(p,U)
	%GET_FWT_A Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(4) + rep_2.*U(5);
	rep_4 = sin(rep_3);
	rep_5 = rep_1.*rep_4;
	rep_6 = sin(U(6));
	rep_7 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_2.*U(2);
	rep_8 = cos(rep_7);
	rep_9 = rep_6.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_3);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_12 + rep_13.*rep_5;
	rep_15 = rep_1.*rep_11;
	rep_16 = rep_10.*rep_4;
	rep_17 = -rep_13.*rep_16 + rep_15;
	rep_18 = cos(U(6));
	rep_19 = rep_17.*rep_18;
	rep_20 = rep_10.*rep_8;
	rep_21 = rep_20.*rep_6;
	rep_22 = rep_13.*rep_6;
	rep_23 = rep_18.*rep_8;
	rep_24 = rep_13.*rep_15 - rep_16;
	rep_25 = rep_12.*rep_13 + rep_5;
	rep_26 = rep_18.*rep_25;
	%% create output vector
	out = [rep_1.*rep_19 + rep_10.*rep_14 + rep_5.*rep_9 rep_1.*rep_14 - rep_10.*rep_19 - rep_21.*rep_4 -rep_17.*rep_6 + rep_18.*rep_4.*rep_8;...
		 rep_1.*(rep_10.*rep_8 - rep_18.*rep_20 - rep_22) rep_1.^2.*rep_8 + rep_10.^2.*rep_23 + rep_10.*rep_22 -rep_13.*rep_18 + rep_21;...
		 -rep_1.*rep_26 + rep_10.*rep_24 + rep_15.*rep_9 rep_1.*rep_24 + rep_10.*rep_26 - rep_12.*rep_9 rep_11.*rep_23 + rep_25.*rep_6];
end