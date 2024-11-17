function out = get_fwt_hinge_vector_RHS(p,U)
	%GET_FWT_HINGE_VECTOR_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = sin(Lambda);
	rep_3 = y_h./b_i.^2;
	rep_4 = y_h.^2./b_i.^3;
	rep_5 = rep_3.*U(11) + rep_4.*U(12);
	rep_6 = sin(rep_5);
	rep_7 = rep_2.*rep_6;
	rep_8 = 2*rep_3.*U(8) + 3*rep_4.*U(9) + 4*y_h.^3.*U(10)./b_i.^4;
	rep_9 = cos(rep_8);
	rep_10 = sin(U(13));
	rep_11 = rep_10.*rep_9;
	rep_12 = cos(rep_5);
	rep_13 = rep_1.*rep_12;
	rep_14 = sin(rep_8);
	rep_15 = rep_13 + rep_14.*rep_7;
	rep_16 = rep_12.*rep_2;
	rep_17 = rep_1.*rep_6;
	rep_18 = cos(U(13));
	rep_19 = rep_18.*(-rep_14.*rep_17 + rep_16);
	rep_20 = cos(U(1));
	rep_21 = sin(U(1));
	rep_22 = rep_21.*rep_9;
	rep_23 = rep_12.*rep_22 + rep_14.*rep_20;
	rep_24 = rep_20.*rep_9;
	rep_25 = rep_14.*rep_16 - rep_17;
	rep_26 = -rep_2.*rep_24 + rep_21.*rep_25;
	rep_27 = rep_13.*rep_14 + rep_7;
	rep_28 = -rep_1.*rep_24 + rep_21.*rep_27;
	rep_29 = rep_10.*(-rep_12.*rep_24 + rep_14.*rep_21);
	rep_30 = rep_2.*rep_22 + rep_20.*rep_25;
	rep_31 = rep_18.*(rep_1.*rep_22 + rep_20.*rep_27);
	%% create output vector
	out = [rep_1.*(rep_1.*rep_15 + rep_11.*rep_7 + rep_19.*rep_2) + rep_2.*(-rep_1.*rep_19 - rep_11.*rep_17 + rep_15.*rep_2);...
		 rep_1.*(-rep_1.*rep_26 - rep_10.*rep_2.*rep_23 + rep_18.*rep_2.*rep_28) + rep_2.*(rep_1.*rep_10.*rep_23 - rep_1.*rep_18.*rep_28 - rep_2.*rep_26);...
		 rep_1.*(rep_1.*rep_30 - rep_2.*rep_29 - rep_2.*rep_31) + rep_2.*(rep_1.*rep_29 + rep_1.*rep_31 + rep_2.*rep_30)];
end