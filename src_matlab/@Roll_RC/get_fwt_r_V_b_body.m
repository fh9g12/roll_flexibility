function out = get_fwt_r_V_b_body(p,U,Xi)
	%GET_FWT_R_V_B_BODY Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = cos(U(3));
	rep_3 = sin(Lambda);
	rep_4 = rep_3.^2;
	rep_5 = sin(U(3));
	rep_6 = rep_5.*U(6);
	rep_7 = -rep_1.*rep_3.*rep_6.*Xi(2,:) - rep_2.*rep_3.*U(6).*Xi(3,:) - rep_4.*rep_6.*Xi(1,:);
	rep_8 = cos(U(1));
	rep_9 = rep_1.*rep_8;
	rep_10 = sin(U(1));
	rep_11 = rep_10.*rep_5;
	rep_12 = rep_2.*rep_9;
	rep_13 = rep_11 - rep_12;
	rep_14 = X_h(2).*U(4);
	rep_15 = X_h(3).*U(4);
	rep_16 = rep_1.*rep_10;
	rep_17 = rep_5.*rep_8;
	rep_18 = rep_17.*U(4);
	rep_19 = rep_10.*rep_2;
	rep_20 = rep_16.*rep_2;
	rep_21 = rep_17.*U(6);
	rep_22 = rep_1.*rep_21 + rep_18 + rep_19.*U(6) + rep_20.*U(4);
	rep_23 = rep_3.*Xi(1,:);
	rep_24 = rep_10.*rep_4;
	rep_25 = rep_10.*rep_14 - rep_15.*rep_8 + rep_23.*(rep_1.*rep_10.*U(4) - rep_22) + (-rep_1.*rep_22 - rep_24.*U(4)).*Xi(2,:) + (rep_11.*U(6) - rep_12.*U(6) + rep_16.*rep_5.*U(4) - rep_2.*rep_8.*U(4)).*Xi(3,:);
	rep_26 = rep_17 + rep_20;
	rep_27 = rep_16.*rep_5;
	rep_28 = -rep_1.*rep_2.*rep_8.*U(4) + rep_11.*U(4) - rep_2.*rep_8.*U(6) + rep_27.*U(6);
	rep_29 = -rep_10.*rep_15 - rep_14.*rep_8 + rep_23.*(-rep_28 - rep_9.*U(4)) + (-rep_1.*rep_28 + rep_4.*rep_8.*U(4)).*Xi(2,:) + (-rep_1.*rep_18 - rep_19.*U(4) - rep_20.*U(6) - rep_21).*Xi(3,:);
	rep_30 = rep_3.*rep_7;
	%% create output vector
	out = [rep_25.*rep_3.*(-rep_13 - rep_9) + rep_29.*rep_3.*(-rep_16 + rep_26) + rep_7.*(rep_1.^2 + rep_2.*rep_4);...
		 rep_1.*rep_30.*(rep_2 - 1) + rep_25.*(-rep_1.*rep_13 + rep_4.*rep_8) + rep_29.*(rep_1.*rep_26 + rep_24);...
		 rep_25.*(-rep_1.*rep_17 - rep_19) + rep_29.*(rep_2.*rep_8 - rep_27) - rep_30.*rep_5];
end