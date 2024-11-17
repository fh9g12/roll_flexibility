function out = get_fwt_V_b_RHS(p,U,Xi)
	%GET_FWT_V_B_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = b_i.^2;
	rep_3 = y_h./rep_2;
	rep_4 = y_h.^2;
	rep_5 = rep_4./b_i.^3;
	rep_6 = rep_3.*U(11) + rep_5.*U(12);
	rep_7 = sin(rep_6);
	rep_8 = rep_1.*rep_7;
	rep_9 = sin(U(13));
	rep_10 = 2*rep_3;
	rep_11 = b_i.^4;
	rep_12 = 1./rep_11;
	rep_13 = 4*y_h.^3.*rep_12;
	rep_14 = 3*rep_5;
	rep_15 = rep_10.*U(8) + rep_13.*U(10) + rep_14.*U(9);
	rep_16 = cos(rep_15);
	rep_17 = rep_16.*rep_9;
	rep_18 = cos(Lambda);
	rep_19 = cos(rep_6);
	rep_20 = rep_18.*rep_19;
	rep_21 = sin(rep_15);
	rep_22 = rep_21.*rep_8;
	rep_23 = rep_20 + rep_22;
	rep_24 = cos(U(13));
	rep_25 = rep_1.*rep_19;
	rep_26 = rep_18.*rep_7;
	rep_27 = rep_21.*rep_26;
	rep_28 = rep_25 - rep_27;
	rep_29 = rep_24.*rep_28;
	rep_30 = rep_3.*U(24) + rep_5.*U(25);
	rep_31 = rep_10.*U(21) + rep_13.*U(23) + rep_14.*U(22);
	rep_32 = rep_20.*rep_21;
	rep_33 = rep_16.*rep_31;
	rep_34 = -rep_26.*rep_33 - rep_30.*rep_32 - rep_30.*rep_8;
	rep_35 = rep_16.*rep_24.*U(26);
	rep_36 = rep_25.*rep_30;
	rep_37 = rep_28.*rep_9;
	rep_38 = rep_1.*U(26);
	rep_39 = rep_31.*rep_9;
	rep_40 = rep_21.*rep_25;
	rep_41 = -rep_26.*rep_30 + rep_30.*rep_40 + rep_33.*rep_8;
	rep_42 = rep_24.*rep_34;
	rep_43 = rep_20.*rep_30;
	rep_44 = rep_18.*U(26);
	rep_45 = (rep_16.*rep_19.*rep_24.*rep_30 - rep_17.*rep_7.*U(26) - rep_21.*rep_24.*rep_31.*rep_7 - rep_29.*U(26) - rep_34.*rep_9).*Xi(3,:) + (rep_1.*rep_41 - rep_17.*rep_43 - rep_18.*rep_42 - rep_26.*rep_35 + rep_27.*rep_39 + rep_37.*rep_44).*Xi(2,:) + (rep_1.*rep_42 + rep_17.*rep_36 + rep_18.*rep_41 - rep_22.*rep_39 + rep_35.*rep_8 - rep_37.*rep_38).*Xi(1,:);
	rep_46 = sin(U(1));
	rep_47 = rep_21.*rep_46;
	rep_48 = cos(U(1));
	rep_49 = rep_16.*rep_48;
	rep_50 = -rep_19.*rep_49 + rep_47;
	rep_51 = rep_50.*rep_9;
	rep_52 = rep_16.*rep_46;
	rep_53 = rep_1.*rep_52;
	rep_54 = -rep_26 + rep_40;
	rep_55 = rep_48.*rep_54;
	rep_56 = rep_53 + rep_55;
	rep_57 = rep_18.*rep_52;
	rep_58 = rep_32 + rep_8;
	rep_59 = rep_48.*rep_58;
	rep_60 = rep_57 + rep_59;
	rep_61 = rep_24.*rep_60;
	rep_62 = rep_11.*U(14);
	rep_63 = b_i.*y_h;
	rep_64 = y_h.*(rep_2.*U(15) + rep_4.*U(17) + rep_63.*U(16));
	rep_65 = y_h.*U(14).*(rep_2.*U(2) + rep_4.*U(4) + rep_63.*U(3));
	rep_66 = y_h.*rep_12;
	rep_67 = rep_21.*rep_48;
	rep_68 = rep_19.*rep_52;
	rep_69 = rep_30.*rep_7;
	rep_70 = rep_31.*rep_67;
	rep_71 = rep_19.*rep_70 + rep_31.*rep_52 + rep_49.*rep_69 + rep_67.*U(14) + rep_68.*U(14);
	rep_72 = rep_31.*rep_47;
	rep_73 = rep_46.*rep_58;
	rep_74 = rep_20.*rep_33 - rep_27.*rep_30 + rep_36;
	rep_75 = rep_16.*rep_18.*rep_48.*U(14) - rep_18.*rep_72 + rep_48.*rep_74 - rep_73.*U(14);
	rep_76 = rep_24.*rep_50;
	rep_77 = rep_60.*rep_9;
	rep_78 = rep_71.*rep_9;
	rep_79 = rep_46.*rep_54;
	rep_80 = rep_1.*rep_16.*rep_19.*rep_31 - rep_22.*rep_30 - rep_43;
	rep_81 = rep_1.*rep_16.*rep_48.*U(14) - rep_1.*rep_72 + rep_48.*rep_80 - rep_79.*U(14);
	rep_82 = rep_24.*rep_75;
	rep_83 = rep_66.*(-rep_46.*rep_65 + rep_48.*rep_62 + rep_48.*rep_64) + (-rep_24.*rep_71 + rep_51.*U(26) + rep_61.*U(26) + rep_75.*rep_9).*Xi(3,:) + (rep_1.*rep_81 + rep_18.*rep_78 + rep_18.*rep_82 + rep_44.*rep_76 - rep_44.*rep_77).*Xi(2,:) + (rep_1.*rep_60.*rep_9.*U(26) - rep_1.*rep_78 - rep_1.*rep_82 + rep_18.*rep_81 - rep_38.*rep_76).*Xi(1,:);
	rep_84 = rep_67 + rep_68;
	rep_85 = -rep_1.*rep_49 + rep_79;
	rep_86 = -rep_18.*rep_49 + rep_73;
	rep_87 = rep_24.*rep_86;
	rep_88 = rep_16.*rep_19.*rep_48.*U(14) + rep_16.*rep_31.*rep_48 - rep_19.*rep_72 - rep_47.*U(14) - rep_52.*rep_69;
	rep_89 = rep_18.*rep_70 + rep_46.*rep_74 + rep_57.*U(14) + rep_59.*U(14);
	rep_90 = rep_24.*rep_84;
	rep_91 = rep_86.*rep_9;
	rep_92 = rep_88.*rep_9;
	rep_93 = rep_1.*rep_70 + rep_46.*rep_80 + rep_53.*U(14) + rep_55.*U(14);
	rep_94 = rep_66.*(-rep_46.*rep_62 - rep_46.*rep_64 - rep_48.*rep_65) + (-rep_24.*rep_88 + rep_84.*rep_9.*U(26) - rep_87.*U(26) - rep_89.*rep_9).*Xi(3,:) + (-rep_1.*rep_93 - rep_18.*rep_24.*rep_89 + rep_18.*rep_92 + rep_44.*rep_90 + rep_44.*rep_91).*Xi(2,:) + (rep_1.*rep_24.*rep_89 - rep_1.*rep_92 - rep_18.*rep_93 - rep_38.*rep_90 - rep_38.*rep_91).*Xi(1,:);
	%% create output vector
	out = [rep_45.*(rep_1.*rep_29 + rep_17.*rep_8 + rep_18.*rep_23) + rep_83.*(-rep_1.*rep_51 - rep_1.*rep_61 + rep_18.*rep_56) + rep_94.*(rep_1.*rep_24.*rep_86 - rep_1.*rep_84.*rep_9 - rep_18.*rep_85);...
		 rep_45.*(rep_1.*rep_23 - rep_17.*rep_26 - rep_18.*rep_29) + rep_83.*(rep_1.*rep_56 + rep_18.*rep_51 + rep_18.*rep_61) + rep_94.*(-rep_1.*rep_85 + rep_18.*rep_84.*rep_9 - rep_18.*rep_87);...
		 rep_45.*(rep_16.*rep_24.*rep_7 - rep_37) + rep_83.*(-rep_76 + rep_77) + rep_94.*(-rep_90 - rep_91)];
end