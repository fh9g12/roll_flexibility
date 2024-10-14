function out = get_fwt_A(p,U)
	%GET_FWT_A Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.*U(3);
	rep_3 = sin(rep_2);
	rep_4 = rep_1.*rep_3;
	rep_5 = sin(U(4));
	rep_6 = 2*y_h.*U(2);
	rep_7 = cos(rep_6);
	rep_8 = rep_5.*rep_7;
	rep_9 = cos(Lambda);
	rep_10 = cos(rep_2);
	rep_11 = rep_10.*rep_9;
	rep_12 = sin(rep_6);
	rep_13 = rep_11 + rep_12.*rep_4;
	rep_14 = rep_1.*rep_10;
	rep_15 = rep_3.*rep_9;
	rep_16 = -rep_12.*rep_15 + rep_14;
	rep_17 = cos(U(4));
	rep_18 = rep_16.*rep_17;
	rep_19 = cos(U(1));
	rep_20 = sin(U(1));
	rep_21 = rep_20.*rep_7;
	rep_22 = rep_10.*rep_21 + rep_12.*rep_19;
	rep_23 = rep_19.*rep_7;
	rep_24 = rep_12.*rep_14 - rep_15;
	rep_25 = -rep_1.*rep_23 + rep_20.*rep_24;
	rep_26 = rep_11.*rep_12 + rep_4;
	rep_27 = rep_20.*rep_26 - rep_23.*rep_9;
	rep_28 = -rep_10.*rep_23 + rep_12.*rep_20;
	rep_29 = rep_28.*rep_5;
	rep_30 = rep_1.*rep_21 + rep_19.*rep_24;
	rep_31 = rep_19.*rep_26 + rep_21.*rep_9;
	rep_32 = rep_17.*rep_31;
	%% create output vector
	out = [rep_1.*rep_18 + rep_13.*rep_9 + rep_4.*rep_8 rep_1.*rep_13 - rep_15.*rep_8 - rep_18.*rep_9 -rep_16.*rep_5 + rep_17.*rep_3.*rep_7;...
		 rep_1.*rep_17.*rep_27 - rep_1.*rep_22.*rep_5 - rep_25.*rep_9 -rep_1.*rep_25 - rep_17.*rep_27.*rep_9 + rep_22.*rep_5.*rep_9 -rep_17.*rep_22 - rep_27.*rep_5;...
		 -rep_1.*rep_29 - rep_1.*rep_32 + rep_30.*rep_9 rep_1.*rep_30 + rep_29.*rep_9 + rep_32.*rep_9 -rep_17.*rep_28 + rep_31.*rep_5];
end