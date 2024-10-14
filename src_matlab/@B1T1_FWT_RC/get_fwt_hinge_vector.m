function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = sin(Lambda);
	rep_3 = y_h.*U(3);
	rep_4 = sin(rep_3);
	rep_5 = rep_2.*rep_4;
	rep_6 = 2*y_h.*U(2);
	rep_7 = cos(rep_6);
	rep_8 = sin(U(4));
	rep_9 = rep_7.*rep_8;
	rep_10 = cos(rep_3);
	rep_11 = rep_1.*rep_10;
	rep_12 = sin(rep_6);
	rep_13 = rep_11 + rep_12.*rep_5;
	rep_14 = rep_10.*rep_2;
	rep_15 = rep_1.*rep_4;
	rep_16 = cos(U(4));
	rep_17 = rep_16.*(-rep_12.*rep_15 + rep_14);
	rep_18 = cos(U(1));
	rep_19 = sin(U(1));
	rep_20 = rep_19.*rep_7;
	rep_21 = rep_10.*rep_20 + rep_12.*rep_18;
	rep_22 = rep_18.*rep_7;
	rep_23 = rep_12.*rep_14 - rep_15;
	rep_24 = rep_19.*rep_23 - rep_2.*rep_22;
	rep_25 = rep_11.*rep_12 + rep_5;
	rep_26 = -rep_1.*rep_22 + rep_19.*rep_25;
	rep_27 = rep_8.*(-rep_10.*rep_22 + rep_12.*rep_19);
	rep_28 = rep_18.*rep_23 + rep_2.*rep_20;
	rep_29 = rep_16.*(rep_1.*rep_20 + rep_18.*rep_25);
	%% create output vector
	out = [rep_1.*(rep_1.*rep_13 + rep_17.*rep_2 + rep_5.*rep_9) + rep_2.*(-rep_1.*rep_17 + rep_13.*rep_2 - rep_15.*rep_9);...
		 rep_1.*(-rep_1.*rep_24 + rep_16.*rep_2.*rep_26 - rep_2.*rep_21.*rep_8) + rep_2.*(-rep_1.*rep_16.*rep_26 + rep_1.*rep_21.*rep_8 - rep_2.*rep_24);...
		 rep_1.*(rep_1.*rep_28 - rep_2.*rep_27 - rep_2.*rep_29) + rep_2.*(rep_1.*rep_27 + rep_1.*rep_29 + rep_2.*rep_28)];
end