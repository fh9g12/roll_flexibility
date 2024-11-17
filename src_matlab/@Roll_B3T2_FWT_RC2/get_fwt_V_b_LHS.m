function out = get_fwt_V_b_LHS(p,U,Xi)
	%GET_FWT_V_B_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
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
	rep_15 = rep_10.*U(8) + rep_13.*U(10) - rep_14.*U(9);
	rep_16 = cos(rep_15);
	rep_17 = rep_16.*rep_9;
	rep_18 = cos(Lambda);
	rep_19 = cos(rep_6);
	rep_20 = rep_18.*rep_19;
	rep_21 = sin(rep_15);
	rep_22 = -rep_20 - rep_21.*rep_8;
	rep_23 = cos(U(13));
	rep_24 = rep_1.*rep_19;
	rep_25 = rep_18.*rep_7;
	rep_26 = rep_21.*rep_25;
	rep_27 = rep_24 - rep_26;
	rep_28 = rep_3.*U(24) + rep_5.*U(25);
	rep_29 = rep_16.*rep_23;
	rep_30 = rep_23.*rep_27;
	rep_31 = rep_10.*U(21) + rep_13.*U(23) - rep_14.*U(22);
	rep_32 = rep_28.*rep_8;
	rep_33 = rep_20.*rep_21;
	rep_34 = rep_16.*rep_31;
	rep_35 = -rep_25.*rep_34 - rep_28.*rep_33 - rep_32;
	rep_36 = rep_29.*U(26);
	rep_37 = rep_20.*rep_28;
	rep_38 = rep_27.*rep_9;
	rep_39 = rep_18.*U(26);
	rep_40 = rep_21.*rep_24;
	rep_41 = rep_18.*rep_28.*rep_7 - rep_28.*rep_40 - rep_34.*rep_8;
	rep_42 = rep_24.*rep_28;
	rep_43 = rep_1.*U(26);
	rep_44 = (-rep_17.*rep_7.*U(26) + rep_19.*rep_28.*rep_29 - rep_21.*rep_23.*rep_31.*rep_7 + rep_30.*U(26) + rep_35.*rep_9).*Xi(3,:) + (rep_1.*rep_41 - rep_17.*rep_37 + rep_18.*rep_21.*rep_31.*rep_7.*rep_9 + rep_18.*rep_23.*rep_35 - rep_25.*rep_36 - rep_38.*rep_39).*Xi(2,:) + (rep_1.*rep_21.*rep_31.*rep_7.*rep_9 + rep_1.*rep_23.*rep_35 - rep_17.*rep_42 - rep_18.*rep_41 - rep_36.*rep_8 - rep_38.*rep_43).*Xi(1,:);
	rep_45 = cos(U(1));
	rep_46 = rep_21.*rep_45;
	rep_47 = sin(U(1));
	rep_48 = rep_16.*rep_47;
	rep_49 = rep_19.*rep_48;
	rep_50 = -rep_46 + rep_49;
	rep_51 = rep_50.*rep_9;
	rep_52 = rep_16.*rep_45;
	rep_53 = rep_18.*rep_7 - rep_40;
	rep_54 = rep_47.*rep_53;
	rep_55 = -rep_1.*rep_52 + rep_54;
	rep_56 = rep_18.*rep_52;
	rep_57 = rep_33 + rep_8;
	rep_58 = rep_47.*rep_57;
	rep_59 = rep_56 + rep_58;
	rep_60 = rep_23.*rep_59;
	rep_61 = rep_11.*U(14);
	rep_62 = b_i.*y_h;
	rep_63 = y_h.*(rep_2.*U(21) + rep_4.*U(23) - rep_62.*U(22));
	rep_64 = y_h.*U(14).*(rep_2.*U(8) + rep_4.*U(10) - rep_62.*U(9));
	rep_65 = y_h.*rep_12;
	rep_66 = rep_28.*rep_7;
	rep_67 = rep_21.*rep_47;
	rep_68 = rep_31.*rep_67;
	rep_69 = rep_16.*rep_19.*rep_45.*U(14) - rep_19.*rep_68 + rep_21.*rep_47.*U(14) - rep_31.*rep_52 - rep_48.*rep_66;
	rep_70 = rep_18.*rep_48;
	rep_71 = rep_31.*rep_46;
	rep_72 = rep_45.*rep_57;
	rep_73 = rep_20.*rep_34 - rep_26.*rep_28 + rep_42;
	rep_74 = -rep_18.*rep_71 + rep_47.*rep_73 - rep_70.*U(14) + rep_72.*U(14);
	rep_75 = rep_23.*rep_50;
	rep_76 = rep_59.*rep_9;
	rep_77 = rep_69.*rep_9;
	rep_78 = rep_1.*rep_48;
	rep_79 = rep_45.*rep_53;
	rep_80 = rep_21.*rep_32 - rep_24.*rep_34 + rep_37;
	rep_81 = rep_1.*rep_71 + rep_47.*rep_80 + rep_78.*U(14) + rep_79.*U(14);
	rep_82 = rep_23.*rep_74;
	rep_83 = -rep_65.*(rep_45.*rep_64 - rep_47.*rep_61 + rep_47.*rep_63) + (-rep_23.*rep_69 + rep_51.*U(26) + rep_60.*U(26) + rep_74.*rep_9).*Xi(3,:) + (rep_1.*rep_77 + rep_1.*rep_82 + rep_18.*rep_81 + rep_43.*rep_75 - rep_43.*rep_76).*Xi(1,:) + (-rep_1.*rep_81 + rep_18.*rep_77 + rep_18.*rep_82 + rep_39.*rep_75 - rep_39.*rep_76).*Xi(2,:);
	rep_84 = -rep_19.*rep_52 - rep_67;
	rep_85 = rep_78 + rep_79;
	rep_86 = -rep_70 + rep_72;
	rep_87 = rep_23.*rep_86;
	rep_88 = rep_19.*rep_71 - rep_31.*rep_48 - rep_46.*U(14) + rep_49.*U(14) + rep_52.*rep_66;
	rep_89 = rep_18.*rep_21.*rep_31.*rep_47 + rep_45.*rep_73 - rep_56.*U(14) - rep_58.*U(14);
	rep_90 = rep_23.*rep_84;
	rep_91 = rep_86.*rep_9;
	rep_92 = rep_88.*rep_9;
	rep_93 = rep_1.*rep_16.*rep_45.*U(14) - rep_1.*rep_68 + rep_45.*rep_80 - rep_54.*U(14);
	rep_94 = rep_23.*rep_89;
	rep_95 = -rep_65.*(rep_45.*rep_61 - rep_45.*rep_63 + rep_47.*rep_64) + (-rep_23.*rep_88 + rep_84.*rep_9.*U(26) - rep_87.*U(26) - rep_89.*rep_9).*Xi(3,:) + (rep_1.*rep_92 - rep_1.*rep_94 - rep_18.*rep_93 + rep_43.*rep_90 + rep_43.*rep_91).*Xi(1,:) + (rep_1.*rep_93 + rep_18.*rep_92 - rep_18.*rep_94 + rep_39.*rep_90 + rep_39.*rep_91).*Xi(2,:);
	%% create output vector
	out = [rep_44.*(rep_1.*rep_23.*rep_27 - rep_17.*rep_8 - rep_18.*rep_22) + rep_83.*(rep_1.*rep_51 + rep_1.*rep_60 + rep_18.*rep_55) + rep_95.*(rep_1.*rep_84.*rep_9 - rep_1.*rep_87 - rep_18.*rep_85);...
		 rep_44.*(rep_1.*rep_22 - rep_17.*rep_25 + rep_18.*rep_30) + rep_83.*(-rep_1.*rep_55 + rep_18.*rep_51 + rep_18.*rep_60) + rep_95.*(rep_1.*rep_85 + rep_18.*rep_84.*rep_9 - rep_18.*rep_87);...
		 rep_44.*(rep_29.*rep_7 + rep_38) + rep_83.*(-rep_75 + rep_76) + rep_95.*(-rep_90 - rep_91)];
end