function out = get_fwt_A_LHS(p,U)
	%GET_FWT_A_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h./b_i.^2;
	rep_3 = y_h.^2./b_i.^3;
	rep_4 = rep_2.*U(11) + rep_3.*U(12);
	rep_5 = sin(rep_4);
	rep_6 = rep_1.*rep_5;
	rep_7 = sin(U(13));
	rep_8 = 2*rep_2.*U(8) - 3*rep_3.*U(9) + 4*y_h.^3.*U(10)./b_i.^4;
	rep_9 = cos(rep_8);
	rep_10 = rep_7.*rep_9;
	rep_11 = cos(Lambda);
	rep_12 = cos(rep_4);
	rep_13 = rep_11.*rep_12;
	rep_14 = sin(rep_8);
	rep_15 = -rep_13 - rep_14.*rep_6;
	rep_16 = cos(U(13));
	rep_17 = rep_1.*rep_12;
	rep_18 = rep_11.*rep_5;
	rep_19 = -rep_14.*rep_18 + rep_17;
	rep_20 = cos(U(1));
	rep_21 = sin(U(1));
	rep_22 = rep_21.*rep_9;
	rep_23 = rep_12.*rep_22 - rep_14.*rep_20;
	rep_24 = rep_23.*rep_7;
	rep_25 = rep_20.*rep_9;
	rep_26 = rep_11.*rep_5 - rep_14.*rep_17;
	rep_27 = -rep_1.*rep_25 + rep_21.*rep_26;
	rep_28 = rep_13.*rep_14 + rep_6;
	rep_29 = rep_11.*rep_25 + rep_21.*rep_28;
	rep_30 = rep_16.*rep_29;
	rep_31 = -rep_12.*rep_25 - rep_14.*rep_21;
	rep_32 = rep_1.*rep_22 + rep_20.*rep_26;
	rep_33 = -rep_11.*rep_22 + rep_20.*rep_28;
	rep_34 = rep_16.*rep_33;
	%% create output vector
	out = [rep_1.*rep_16.*rep_19 - rep_10.*rep_6 - rep_11.*rep_15 rep_1.*rep_15 - rep_10.*rep_18 + rep_11.*rep_16.*rep_19 rep_16.*rep_5.*rep_9 + rep_19.*rep_7;...
		 rep_1.*rep_24 + rep_1.*rep_30 + rep_11.*rep_27 -rep_1.*rep_27 + rep_11.*rep_24 + rep_11.*rep_30 -rep_16.*rep_23 + rep_29.*rep_7;...
		 rep_1.*rep_31.*rep_7 - rep_1.*rep_34 - rep_11.*rep_32 rep_1.*rep_32 + rep_11.*rep_31.*rep_7 - rep_11.*rep_34 -rep_16.*rep_31 - rep_33.*rep_7];
end