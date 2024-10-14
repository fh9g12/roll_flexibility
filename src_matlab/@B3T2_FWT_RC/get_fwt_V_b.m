function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:35 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = sin(U(6));
	rep_3 = 2*y_h;
	rep_4 = y_h.^2;
	rep_5 = 3*rep_4;
	rep_6 = 4*y_h.^3;
	rep_7 = rep_3.*U(1) + rep_5.*U(2) + rep_6.*U(3);
	rep_8 = sin(rep_7);
	rep_9 = rep_2.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_7);
	rep_12 = cos(U(6));
	rep_13 = rep_10.*rep_11;
	rep_14 = rep_12.*rep_13;
	rep_15 = rep_3.*U(7) + rep_5.*U(8) + rep_6.*U(9);
	rep_16 = rep_11.*rep_15;
	rep_17 = rep_10.*rep_9;
	rep_18 = rep_12.*rep_8;
	rep_19 = rep_15.*rep_8;
	rep_20 = rep_10.^2;
	rep_21 = rep_11.*rep_2;
	rep_22 = rep_21.*U(12);
	rep_23 = rep_1.^2;
	rep_24 = rep_15.*rep_18;
	rep_25 = rep_1.*(rep_10.*rep_11.*rep_2.*U(12) + rep_10.*rep_12.*rep_15.*rep_8 - rep_10.*rep_19 - rep_16.*rep_2 - rep_18.*U(12)).*Xi(1,:) + (-rep_12.*rep_16 + rep_14.*U(12) - rep_15.*rep_17 + rep_9.*U(12)).*Xi(3,:) + (rep_10.*rep_11.*rep_15.*rep_2 + rep_10.*rep_12.*rep_8.*U(12) - rep_19.*rep_23 - rep_20.*rep_22 - rep_20.*rep_24).*Xi(2,:);
	rep_26 = y_h.*U(4) + rep_4.*U(5);
	rep_27 = sin(rep_26);
	rep_28 = rep_1.*rep_27;
	rep_29 = cos(rep_26);
	rep_30 = rep_10.*rep_29;
	rep_31 = rep_28.*rep_8;
	rep_32 = rep_30 + rep_31;
	rep_33 = rep_1.*rep_29;
	rep_34 = rep_10.*rep_27;
	rep_35 = rep_34.*rep_8;
	rep_36 = rep_33 - rep_35;
	rep_37 = rep_12.*rep_36;
	rep_38 = y_h.*U(10) + rep_4.*U(11);
	rep_39 = rep_28.*rep_38;
	rep_40 = rep_30.*rep_8;
	rep_41 = -rep_16.*rep_34 - rep_38.*rep_40 - rep_39;
	rep_42 = rep_11.*rep_12;
	rep_43 = rep_42.*U(12);
	rep_44 = rep_33.*rep_38;
	rep_45 = rep_15.*rep_9;
	rep_46 = rep_2.*rep_36;
	rep_47 = rep_46.*U(12);
	rep_48 = rep_34.*rep_38;
	rep_49 = rep_33.*rep_8;
	rep_50 = rep_16.*rep_28 + rep_38.*rep_49 - rep_48;
	rep_51 = rep_12.*rep_41;
	rep_52 = rep_30.*rep_38;
	rep_53 = (rep_11.*rep_12.*rep_29.*rep_38 - rep_2.*rep_41 - rep_22.*rep_27 - rep_24.*rep_27 - rep_37.*U(12)).*Xi(3,:) + (-rep_1.*rep_47 + rep_1.*rep_51 + rep_10.*rep_50 + rep_21.*rep_44 + rep_28.*rep_43 - rep_28.*rep_45).*Xi(1,:) + (rep_1.*rep_50 + rep_10.*rep_47 - rep_10.*rep_51 - rep_21.*rep_52 - rep_34.*rep_43 + rep_34.*rep_45).*Xi(2,:);
	rep_54 = -rep_34 + rep_49;
	rep_55 = rep_28 + rep_40;
	rep_56 = rep_12.*rep_55;
	rep_57 = rep_16.*rep_30 - rep_35.*rep_38 + rep_44;
	rep_58 = rep_2.*rep_55;
	rep_59 = rep_58.*U(12);
	rep_60 = rep_1.*rep_11.*rep_15.*rep_29 - rep_31.*rep_38 - rep_52;
	rep_61 = rep_12.*rep_57;
	rep_62 = rep_4.*(y_h.*U(8) + rep_4.*U(9) + U(7)) + (rep_12.*rep_55.*U(12) + rep_2.*rep_57 - rep_22.*rep_29 - rep_24.*rep_29 - rep_27.*rep_38.*rep_42).*Xi(3,:) + (rep_1.*rep_59 - rep_1.*rep_61 + rep_10.*rep_60 - rep_21.*rep_39 + rep_33.*rep_43 - rep_33.*rep_45).*Xi(1,:) + (rep_1.*rep_60 - rep_10.*rep_59 + rep_10.*rep_61 + rep_21.*rep_48 - rep_30.*rep_43 + rep_30.*rep_45).*Xi(2,:);
	%% create output vector
	out = [rep_1.*rep_25.*(rep_10.*rep_11 - rep_14 - rep_9) + rep_53.*(rep_1.*rep_37 + rep_10.*rep_32 + rep_21.*rep_28) + rep_62.*(-rep_1.*rep_56 + rep_10.*rep_54 + rep_21.*rep_33);...
		 rep_25.*(rep_11.*rep_23 + rep_17 + rep_20.*rep_42) + rep_53.*(rep_1.*rep_32 - rep_10.*rep_37 - rep_21.*rep_34) + rep_62.*(rep_1.*rep_54 + rep_10.*rep_56 - rep_21.*rep_30);...
		 rep_25.*(rep_13.*rep_2 - rep_18) + rep_53.*(rep_11.*rep_12.*rep_27 - rep_46) + rep_62.*(rep_29.*rep_42 + rep_58)];
end