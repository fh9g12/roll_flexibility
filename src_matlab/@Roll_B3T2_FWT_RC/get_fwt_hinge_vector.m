function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = sin(Lambda);
	rep_3 = y_h.^2;
	rep_4 = y_h.*U(5) + rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = rep_2.*rep_5;
	rep_7 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_3.*U(3);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(7));
	rep_10 = rep_8.*rep_9;
	rep_11 = cos(rep_4);
	rep_12 = rep_1.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_12 + rep_13.*rep_6;
	rep_15 = rep_11.*rep_2;
	rep_16 = rep_1.*rep_5;
	rep_17 = cos(U(7));
	rep_18 = rep_17.*(-rep_13.*rep_16 + rep_15);
	rep_19 = cos(U(1));
	rep_20 = sin(U(1));
	rep_21 = rep_20.*rep_8;
	rep_22 = rep_11.*rep_21 + rep_13.*rep_19;
	rep_23 = rep_19.*rep_8;
	rep_24 = rep_13.*rep_15 - rep_16;
	rep_25 = -rep_2.*rep_23 + rep_20.*rep_24;
	rep_26 = rep_12.*rep_13 + rep_6;
	rep_27 = -rep_1.*rep_23 + rep_20.*rep_26;
	rep_28 = rep_9.*(-rep_11.*rep_23 + rep_13.*rep_20);
	rep_29 = rep_19.*rep_24 + rep_2.*rep_21;
	rep_30 = rep_17.*(rep_1.*rep_21 + rep_19.*rep_26);
	%% create output vector
	out = [rep_1.*(rep_1.*rep_14 + rep_10.*rep_6 + rep_18.*rep_2) + rep_2.*(-rep_1.*rep_18 - rep_10.*rep_16 + rep_14.*rep_2);...
		 rep_1.*(-rep_1.*rep_25 + rep_17.*rep_2.*rep_27 - rep_2.*rep_22.*rep_9) + rep_2.*(-rep_1.*rep_17.*rep_27 + rep_1.*rep_22.*rep_9 - rep_2.*rep_25);...
		 rep_1.*(rep_1.*rep_29 - rep_2.*rep_28 - rep_2.*rep_30) + rep_2.*(rep_1.*rep_28 + rep_1.*rep_30 + rep_2.*rep_29)];
end