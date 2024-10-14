function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = sin(Lambda);
	rep_3 = y_h.^2;
	rep_4 = y_h.*U(4) + rep_3.*U(5);
	rep_5 = sin(rep_4);
	rep_6 = rep_2.*rep_5;
	rep_7 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_3.*U(2);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(6));
	rep_10 = rep_8.*rep_9;
	rep_11 = cos(rep_4);
	rep_12 = rep_1.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_12 + rep_13.*rep_6;
	rep_15 = rep_11.*rep_2;
	rep_16 = rep_1.*rep_5;
	rep_17 = cos(U(6));
	rep_18 = rep_17.*(-rep_13.*rep_16 + rep_15);
	rep_19 = rep_1.*rep_8;
	rep_20 = rep_13.*rep_9;
	rep_21 = rep_13.*rep_15 - rep_16;
	rep_22 = rep_17.*(rep_12.*rep_13 + rep_6);
	%% create output vector
	out = [rep_1.*(rep_1.*rep_14 + rep_10.*rep_6 + rep_18.*rep_2) + rep_2.*(-rep_1.*rep_18 + rep_14.*rep_2 - rep_19.*rep_5.*rep_9);...
		 rep_1.*rep_2.*(rep_1.*rep_8 - rep_17.*rep_19 - rep_20) + rep_2.*(rep_1.^2.*rep_17.*rep_8 + rep_1.*rep_20 + rep_2.^2.*rep_8);...
		 rep_1.*(rep_1.*rep_21 + rep_10.*rep_15 - rep_2.*rep_22) + rep_2.*(rep_1.*rep_22 - rep_10.*rep_12 + rep_2.*rep_21)];
end