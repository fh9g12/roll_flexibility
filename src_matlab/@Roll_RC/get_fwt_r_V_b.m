function out = get_fwt_r_V_b(p,U,Xi)
	%GET_FWT_R_V_B Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = cos(U(2));
	rep_3 = sin(Lambda);
	rep_4 = rep_3.^2;
	rep_5 = sin(U(2));
	rep_6 = rep_1.*rep_3.*rep_5.*U(5).*Xi(2,:) - rep_2.*rep_3.*U(5).*Xi(3,:) - rep_4.*rep_5.*U(5).*Xi(1,:);
	rep_7 = sin(U(1));
	rep_8 = rep_1.*rep_7;
	rep_9 = cos(U(1));
	rep_10 = rep_5.*rep_9;
	rep_11 = rep_2.*rep_8;
	rep_12 = X_h(2).*U(4);
	rep_13 = X_h(3).*U(4);
	rep_14 = rep_2.*rep_7;
	rep_15 = rep_1.*rep_9;
	rep_16 = rep_2.*rep_9;
	rep_17 = rep_16.*U(5);
	rep_18 = rep_5.*rep_7;
	rep_19 = rep_18.*U(4);
	rep_20 = rep_1.*rep_18.*U(5);
	rep_21 = rep_15.*rep_2;
	rep_22 = rep_21.*U(4);
	rep_23 = rep_3.*Xi(1,:);
	rep_24 = rep_4.*rep_9;
	rep_25 = rep_12.*rep_9 - rep_13.*rep_7 + rep_23.*(rep_15.*U(4) + rep_17 - rep_19 + rep_20 - rep_22) + (rep_1.*(-rep_17 + rep_19 - rep_20 + rep_22) + rep_24.*U(4)).*Xi(2,:) + (rep_1.*rep_2.*rep_7.*U(5) + rep_1.*rep_5.*rep_9.*U(4) - rep_10.*U(5) - rep_14.*U(4)).*Xi(3,:);
	rep_26 = rep_18 + rep_21;
	rep_27 = rep_8.*U(4);
	rep_28 = rep_10.*U(4);
	rep_29 = rep_14.*U(5);
	rep_30 = rep_2.*rep_27;
	rep_31 = rep_15.*rep_5.*U(5);
	rep_32 = rep_4.*rep_7;
	rep_33 = -rep_12.*rep_7 - rep_13.*rep_9 + rep_23.*(-rep_27 - rep_28 - rep_29 + rep_30 + rep_31) + (rep_1.*(rep_28 + rep_29 - rep_30 - rep_31) - rep_32.*U(4)).*Xi(2,:) + (-rep_1.*rep_19 + rep_1.*rep_2.*rep_9.*U(5) - rep_16.*U(4) + rep_5.*rep_7.*U(5)).*Xi(3,:);
	rep_34 = rep_3.*rep_6;
	%% create output vector
	out = [rep_25.*rep_3.*(rep_10 - rep_11 + rep_8) + rep_3.*rep_33.*(rep_1.*rep_9 - rep_26) + rep_6.*(rep_1.^2 + rep_2.*rep_4);...
		 rep_1.*rep_34.*(1 - rep_2) + rep_25.*(rep_1.*(-rep_10 + rep_11) + rep_32) + rep_33.*(rep_1.*rep_26 + rep_24);...
		 rep_25.*(rep_1.*rep_18 + rep_16) + rep_33.*(rep_1.*rep_5.*rep_9 - rep_14) - rep_34.*rep_5];
end