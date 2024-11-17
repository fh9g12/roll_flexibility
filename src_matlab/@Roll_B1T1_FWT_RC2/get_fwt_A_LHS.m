function out = get_fwt_A_LHS(p,U)
	%GET_FWT_A_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h./b_i.^2;
	rep_3 = rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = rep_1.*rep_4;
	rep_6 = sin(U(7));
	rep_7 = 2*rep_2.*U(5);
	rep_8 = cos(rep_7);
	rep_9 = rep_6.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_3);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = -rep_12 - rep_13.*rep_5;
	rep_15 = cos(U(7));
	rep_16 = rep_1.*rep_11;
	rep_17 = rep_10.*rep_4;
	rep_18 = -rep_13.*rep_17 + rep_16;
	rep_19 = cos(U(1));
	rep_20 = sin(U(1));
	rep_21 = rep_20.*rep_8;
	rep_22 = rep_11.*rep_21 - rep_13.*rep_19;
	rep_23 = rep_22.*rep_6;
	rep_24 = rep_19.*rep_8;
	rep_25 = rep_10.*rep_4 - rep_13.*rep_16;
	rep_26 = -rep_1.*rep_24 + rep_20.*rep_25;
	rep_27 = rep_12.*rep_13 + rep_5;
	rep_28 = rep_10.*rep_24 + rep_20.*rep_27;
	rep_29 = rep_15.*rep_28;
	rep_30 = -rep_11.*rep_24 - rep_13.*rep_20;
	rep_31 = rep_1.*rep_21 + rep_19.*rep_25;
	rep_32 = -rep_10.*rep_21 + rep_19.*rep_27;
	rep_33 = rep_15.*rep_32;
	%% create output vector
	out = [rep_1.*rep_15.*rep_18 - rep_10.*rep_14 - rep_5.*rep_9 rep_1.*rep_14 + rep_10.*rep_15.*rep_18 - rep_17.*rep_9 rep_15.*rep_4.*rep_8 + rep_18.*rep_6;...
		 rep_1.*rep_23 + rep_1.*rep_29 + rep_10.*rep_26 -rep_1.*rep_26 + rep_10.*rep_23 + rep_10.*rep_29 -rep_15.*rep_22 + rep_28.*rep_6;...
		 rep_1.*rep_30.*rep_6 - rep_1.*rep_33 - rep_10.*rep_31 rep_1.*rep_31 + rep_10.*rep_30.*rep_6 - rep_10.*rep_33 -rep_15.*rep_30 - rep_32.*rep_6];
end