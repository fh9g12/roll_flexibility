function out = get_fwt_hinge_vector_LHS(p,U)
	%GET_FWT_HINGE_VECTOR_LHS Auto-generated function from moyra
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
	rep_2 = cos(Lambda);
	rep_3 = y_h./b_i.^2;
	rep_4 = rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = rep_2.*rep_5;
	rep_7 = 2*rep_3.*U(5);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(7));
	rep_10 = rep_8.*rep_9;
	rep_11 = cos(rep_4);
	rep_12 = rep_11.*rep_2;
	rep_13 = sin(rep_7);
	rep_14 = rep_1.*rep_5;
	rep_15 = -rep_12 - rep_13.*rep_14;
	rep_16 = rep_1.*rep_11;
	rep_17 = -rep_13.*rep_6 + rep_16;
	rep_18 = cos(U(7));
	rep_19 = cos(U(1));
	rep_20 = sin(U(1));
	rep_21 = rep_20.*rep_8;
	rep_22 = rep_9.*(rep_11.*rep_21 - rep_13.*rep_19);
	rep_23 = rep_19.*rep_8;
	rep_24 = -rep_13.*rep_16 + rep_2.*rep_5;
	rep_25 = -rep_1.*rep_23 + rep_20.*rep_24;
	rep_26 = rep_12.*rep_13 + rep_14;
	rep_27 = rep_18.*(rep_2.*rep_23 + rep_20.*rep_26);
	rep_28 = -rep_11.*rep_23 - rep_13.*rep_20;
	rep_29 = rep_1.*rep_21 + rep_19.*rep_24;
	rep_30 = rep_18.*(rep_19.*rep_26 - rep_2.*rep_21);
	%% create output vector
	out = [rep_1.*(rep_1.*rep_15 - rep_10.*rep_6 + rep_17.*rep_18.*rep_2) + rep_2.*(rep_1.*rep_17.*rep_18 - rep_10.*rep_14 - rep_15.*rep_2);...
		 rep_1.*(-rep_1.*rep_25 + rep_2.*rep_22 + rep_2.*rep_27) + rep_2.*(rep_1.*rep_22 + rep_1.*rep_27 + rep_2.*rep_25);...
		 rep_1.*(rep_1.*rep_29 + rep_2.*rep_28.*rep_9 - rep_2.*rep_30) + rep_2.*(rep_1.*rep_28.*rep_9 - rep_1.*rep_30 - rep_2.*rep_29)];
end