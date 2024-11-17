function out = get_fwt_V_b_RHS(p,U,Xi)
	%GET_FWT_V_B_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:53 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = b_i.^(-2);
	rep_3 = y_h.*rep_2;
	rep_4 = rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = rep_1.*rep_5;
	rep_7 = sin(U(7));
	rep_8 = 2*rep_3;
	rep_9 = rep_8.*U(5);
	rep_10 = cos(rep_9);
	rep_11 = rep_10.*rep_7;
	rep_12 = cos(Lambda);
	rep_13 = cos(rep_4);
	rep_14 = rep_12.*rep_13;
	rep_15 = sin(rep_9);
	rep_16 = rep_15.*rep_6;
	rep_17 = rep_14 + rep_16;
	rep_18 = cos(U(7));
	rep_19 = rep_1.*rep_13;
	rep_20 = rep_12.*rep_5;
	rep_21 = rep_15.*rep_20;
	rep_22 = rep_19 - rep_21;
	rep_23 = rep_18.*rep_22;
	rep_24 = rep_8.*U(12);
	rep_25 = rep_3.*U(13);
	rep_26 = rep_14.*rep_15;
	rep_27 = rep_10.*rep_24;
	rep_28 = -rep_20.*rep_27 - rep_25.*rep_26 - rep_25.*rep_6;
	rep_29 = rep_10.*rep_18.*U(14);
	rep_30 = rep_19.*rep_25;
	rep_31 = rep_24.*rep_7;
	rep_32 = rep_22.*rep_7;
	rep_33 = rep_1.*U(14);
	rep_34 = rep_15.*rep_19;
	rep_35 = -rep_20.*rep_25 + rep_25.*rep_34 + rep_27.*rep_6;
	rep_36 = rep_18.*rep_28;
	rep_37 = rep_14.*rep_25;
	rep_38 = rep_12.*U(14);
	rep_39 = (y_h.*rep_10.*rep_13.*rep_18.*rep_2.*U(13) - rep_10.*rep_5.*rep_7.*U(14) - rep_15.*rep_18.*rep_24.*rep_5 - rep_23.*U(14) - rep_28.*rep_7).*Xi(3,:) + (rep_1.*rep_35 - rep_11.*rep_37 - rep_12.*rep_36 - rep_20.*rep_29 + rep_21.*rep_31 + rep_32.*rep_38).*Xi(2,:) + (rep_1.*rep_36 + rep_11.*rep_30 + rep_12.*rep_35 - rep_16.*rep_31 + rep_29.*rep_6 - rep_32.*rep_33).*Xi(1,:);
	rep_40 = sin(U(1));
	rep_41 = rep_15.*rep_40;
	rep_42 = cos(U(1));
	rep_43 = rep_10.*rep_42;
	rep_44 = -rep_13.*rep_43 + rep_41;
	rep_45 = rep_44.*rep_7;
	rep_46 = rep_10.*rep_40;
	rep_47 = rep_1.*rep_46;
	rep_48 = -rep_20 + rep_34;
	rep_49 = rep_42.*rep_48;
	rep_50 = rep_47 + rep_49;
	rep_51 = rep_12.*rep_46;
	rep_52 = rep_26 + rep_6;
	rep_53 = rep_42.*rep_52;
	rep_54 = rep_51 + rep_53;
	rep_55 = rep_18.*rep_54;
	rep_56 = y_h.*U(8);
	rep_57 = y_h.^2.*rep_2;
	rep_58 = rep_57.*U(9);
	rep_59 = rep_57.*U(2).*U(8);
	rep_60 = rep_15.*rep_42;
	rep_61 = rep_13.*rep_46;
	rep_62 = rep_25.*rep_5;
	rep_63 = rep_24.*rep_60;
	rep_64 = rep_13.*rep_63 + rep_24.*rep_46 + rep_43.*rep_62 + rep_60.*U(8) + rep_61.*U(8);
	rep_65 = rep_24.*rep_41;
	rep_66 = rep_40.*rep_52;
	rep_67 = rep_14.*rep_27 - rep_21.*rep_25 + rep_30;
	rep_68 = rep_10.*rep_12.*rep_42.*U(8) - rep_12.*rep_65 + rep_42.*rep_67 - rep_66.*U(8);
	rep_69 = rep_18.*rep_44;
	rep_70 = rep_54.*rep_7;
	rep_71 = rep_64.*rep_7;
	rep_72 = rep_40.*rep_48;
	rep_73 = 2*y_h.*rep_1.*rep_10.*rep_13.*rep_2.*U(12) - rep_16.*rep_25 - rep_37;
	rep_74 = rep_1.*rep_10.*rep_42.*U(8) - rep_1.*rep_65 + rep_42.*rep_73 - rep_72.*U(8);
	rep_75 = rep_18.*rep_68;
	rep_76 = -rep_40.*rep_59 + rep_42.*rep_56 + rep_42.*rep_58 + (-rep_18.*rep_64 + rep_45.*U(14) + rep_55.*U(14) + rep_68.*rep_7).*Xi(3,:) + (rep_1.*rep_74 + rep_12.*rep_71 + rep_12.*rep_75 + rep_38.*rep_69 - rep_38.*rep_70).*Xi(2,:) + (rep_1.*rep_54.*rep_7.*U(14) - rep_1.*rep_71 - rep_1.*rep_75 + rep_12.*rep_74 - rep_33.*rep_69).*Xi(1,:);
	rep_77 = rep_60 + rep_61;
	rep_78 = -rep_1.*rep_43 + rep_72;
	rep_79 = -rep_12.*rep_43 + rep_66;
	rep_80 = rep_18.*rep_79;
	rep_81 = 2*y_h.*rep_10.*rep_2.*rep_42.*U(12) + rep_10.*rep_13.*rep_42.*U(8) - rep_13.*rep_65 - rep_41.*U(8) - rep_46.*rep_62;
	rep_82 = rep_12.*rep_63 + rep_40.*rep_67 + rep_51.*U(8) + rep_53.*U(8);
	rep_83 = rep_18.*rep_77;
	rep_84 = rep_7.*rep_79;
	rep_85 = rep_7.*rep_81;
	rep_86 = rep_1.*rep_63 + rep_40.*rep_73 + rep_47.*U(8) + rep_49.*U(8);
	rep_87 = -rep_40.*rep_56 - rep_40.*rep_58 - rep_42.*rep_59 + (-rep_18.*rep_81 + rep_7.*rep_77.*U(14) - rep_7.*rep_82 - rep_80.*U(14)).*Xi(3,:) + (-rep_1.*rep_86 - rep_12.*rep_18.*rep_82 + rep_12.*rep_85 + rep_38.*rep_83 + rep_38.*rep_84).*Xi(2,:) + (rep_1.*rep_18.*rep_82 - rep_1.*rep_85 - rep_12.*rep_86 - rep_33.*rep_83 - rep_33.*rep_84).*Xi(1,:);
	%% create output vector
	out = [rep_39.*(rep_1.*rep_23 + rep_11.*rep_6 + rep_12.*rep_17) + rep_76.*(-rep_1.*rep_45 - rep_1.*rep_55 + rep_12.*rep_50) + rep_87.*(rep_1.*rep_18.*rep_79 - rep_1.*rep_7.*rep_77 - rep_12.*rep_78);...
		 rep_39.*(rep_1.*rep_17 - rep_11.*rep_20 - rep_12.*rep_23) + rep_76.*(rep_1.*rep_50 + rep_12.*rep_45 + rep_12.*rep_55) + rep_87.*(-rep_1.*rep_78 + rep_12.*rep_7.*rep_77 - rep_12.*rep_80);...
		 rep_39.*(rep_10.*rep_18.*rep_5 - rep_32) + rep_76.*(-rep_69 + rep_70) + rep_87.*(-rep_83 - rep_84)];
end