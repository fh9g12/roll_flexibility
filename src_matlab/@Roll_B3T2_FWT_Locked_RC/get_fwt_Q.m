function out = get_fwt_Q(p,U,W,Xi)
	%GET_FWT_Q Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:24 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = cos(rep_2);
	rep_4 = 2*y_h;
	rep_5 = 3*rep_1;
	rep_6 = y_h.^3;
	rep_7 = 4*rep_6;
	rep_8 = rep_4.*U(2) + rep_5.*U(3) + rep_7.*U(4);
	rep_9 = sin(rep_8);
	rep_10 = rep_9.^2;
	rep_11 = cos(rep_8);
	rep_12 = rep_11.^2;
	rep_13 = rep_10 + rep_12;
	rep_14 = sin(rep_2);
	rep_15 = rep_14.*rep_3;
	rep_16 = -rep_10.*rep_15 - rep_12.*rep_15 + rep_14.*rep_3;
	rep_17 = rep_13.*rep_14;
	rep_18 = rep_16.*rep_3;
	rep_19 = rep_11.*Xi(2,:);
	rep_20 = rep_9.*Xi(3,:);
	rep_21 = y_h + rep_19 - rep_20;
	rep_22 = -rep_21;
	rep_23 = rep_11.*rep_21;
	rep_24 = rep_3.*Xi(1,:);
	rep_25 = rep_9.*Xi(2,:);
	rep_26 = rep_14.*rep_25;
	rep_27 = rep_11.*Xi(3,:);
	rep_28 = rep_14.*rep_27;
	rep_29 = rep_24 + rep_26 + rep_28;
	rep_30 = rep_14.*rep_29;
	rep_31 = rep_14.*Xi(1,:);
	rep_32 = rep_25.*rep_3;
	rep_33 = rep_27.*rep_3;
	rep_34 = rep_1.*(y_h.*U(3) + rep_1.*U(4) + U(2)) - rep_31 + rep_32 + rep_33;
	rep_35 = -rep_23 - rep_3.*rep_34.*rep_9 - rep_30.*rep_9;
	rep_36 = rep_11.*rep_35;
	rep_37 = rep_11.*rep_34;
	rep_38 = -rep_11.*rep_30 + rep_21.*rep_9 - rep_3.*rep_37;
	rep_39 = rep_38.*rep_9;
	rep_40 = rep_21 + rep_36 - rep_39;
	rep_41 = rep_11.*rep_3;
	rep_42 = -rep_22.*rep_41 + rep_34.*rep_9;
	rep_43 = -rep_29;
	rep_44 = -rep_14.*rep_23 + rep_43.*rep_9;
	rep_45 = rep_29.*rep_3;
	rep_46 = rep_14.*rep_34 - rep_45;
	rep_47 = rep_38.*rep_41;
	rep_48 = rep_3.*rep_9;
	rep_49 = rep_35.*rep_48;
	rep_50 = rep_14.*rep_46 - rep_34 - rep_47 - rep_49;
	rep_51 = -rep_22.*rep_48 - rep_37;
	rep_52 = -rep_11.*rep_43 - rep_14.*rep_21.*rep_9;
	rep_53 = rep_14.*rep_4;
	rep_54 = -rep_10.*rep_53 - rep_12.*rep_53;
	rep_55 = rep_3.*rep_4;
	rep_56 = rep_10.*rep_55 + rep_12.*rep_55;
	rep_57 = rep_14.*rep_56;
	rep_58 = rep_21.*rep_3;
	rep_59 = 2*y_h.*rep_11.*rep_14.*rep_35 + 2*y_h.*rep_11.*rep_14.*Xi(2,:) - rep_20.*rep_53 - rep_39.*rep_53;
	rep_60 = rep_1 + rep_19.*rep_55 - rep_20.*rep_55 + rep_36.*rep_55 - rep_39.*rep_55;
	rep_61 = rep_11.*rep_38;
	rep_62 = rep_35.*rep_9;
	rep_63 = -rep_25.*rep_4 - rep_27.*rep_4 - rep_4.*rep_61 - rep_4.*rep_62;
	rep_64 = rep_14.*rep_59;
	rep_65 = rep_14.*rep_5;
	rep_66 = -rep_10.*rep_65 - rep_12.*rep_65;
	rep_67 = rep_3.*rep_5;
	rep_68 = rep_10.*rep_67 + rep_12.*rep_67;
	rep_69 = rep_14.*rep_68;
	rep_70 = 3*rep_1.*rep_11.*rep_14.*rep_35 + 3*rep_1.*rep_11.*rep_14.*Xi(2,:) - rep_20.*rep_65 - rep_39.*rep_65;
	rep_71 = rep_19.*rep_67 - rep_20.*rep_67 + rep_36.*rep_67 - rep_39.*rep_67 + rep_6;
	rep_72 = -rep_25.*rep_5 - rep_27.*rep_5 - rep_5.*rep_61 - rep_5.*rep_62;
	rep_73 = rep_14.*rep_70;
	rep_74 = rep_14.*rep_7;
	rep_75 = -rep_10.*rep_74 - rep_12.*rep_74;
	rep_76 = rep_3.*rep_7;
	rep_77 = rep_10.*rep_76 + rep_12.*rep_76;
	rep_78 = rep_14.*rep_77;
	rep_79 = 4*rep_11.*rep_14.*rep_35.*rep_6 + 4*rep_11.*rep_14.*rep_6.*Xi(2,:) - rep_20.*rep_74 - rep_39.*rep_74;
	rep_80 = y_h.^4 + rep_19.*rep_76 - rep_20.*rep_76 + rep_36.*rep_76 - rep_39.*rep_76;
	rep_81 = -rep_25.*rep_7 - rep_27.*rep_7 - rep_61.*rep_7 - rep_62.*rep_7;
	rep_82 = rep_14.*rep_79;
	rep_83 = rep_14.^2;
	rep_84 = rep_3.^2;
	rep_85 = y_h.*rep_84;
	rep_86 = y_h.*rep_83 + rep_10.*rep_85 + rep_12.*rep_85;
	rep_87 = rep_11.*W(5,:);
	rep_88 = rep_9.*W(6,:);
	rep_89 = -rep_34;
	rep_90 = -rep_3.*rep_89 + rep_30;
	rep_91 = rep_14.*rep_46;
	rep_92 = -y_h.*rep_31 + y_h.*rep_32 + y_h.*rep_33 + y_h.*rep_47 + y_h.*rep_49 - y_h.*rep_91;
	rep_93 = rep_3.*rep_46;
	rep_94 = rep_11.*rep_14;
	rep_95 = rep_38.*rep_94;
	rep_96 = rep_14.*rep_9;
	rep_97 = rep_35.*rep_96;
	rep_98 = -y_h.*rep_24 - y_h.*rep_26 - y_h.*rep_28 - y_h.*rep_93 - y_h.*rep_95 - y_h.*rep_97;
	rep_99 = -rep_45.*rep_9 - rep_89.*rep_96;
	rep_100 = -rep_11.*rep_45 - rep_89.*rep_94;
	rep_101 = rep_1.*rep_84;
	rep_102 = rep_1.*rep_83 + rep_10.*rep_101 + rep_101.*rep_12;
	rep_103 = -rep_1.*rep_31 + rep_1.*rep_32 + rep_1.*rep_33 + rep_1.*rep_47 + rep_1.*rep_49 - rep_1.*rep_91;
	rep_104 = -rep_1.*rep_24 - rep_1.*rep_26 - rep_1.*rep_28 - rep_1.*rep_93 - rep_1.*rep_95 - rep_1.*rep_97;
	%% create output vector
	out = [(rep_11.*rep_17 + rep_11.*rep_18).*W(6,:) + (rep_13.*rep_3 - rep_14.*rep_16).*W(4,:) + (rep_17.*rep_9 + rep_18.*rep_9).*W(5,:) + (rep_13.*rep_14.*rep_22 - rep_14.*rep_40 - rep_18.*rep_21).*W(1,:) + (rep_11.*rep_50 + rep_13.*rep_51 + rep_16.*rep_52 + rep_40.*rep_48).*W(2,:) + (rep_13.*rep_42 + rep_16.*rep_44 + rep_40.*rep_41 - rep_50.*rep_9).*W(3,:);...
		 (rep_11.*rep_57 + rep_41.*rep_54).*W(6,:) + (-rep_14.*rep_54 + rep_3.*rep_56).*W(4,:) + (rep_48.*rep_54 + rep_57.*rep_9).*W(5,:) + (rep_14.*rep_22.*rep_56 - rep_14.*rep_60 + rep_3.*rep_59 - rep_54.*rep_58).*W(1,:) + (rep_11.*rep_63 + rep_48.*rep_60 + rep_51.*rep_56 + rep_52.*rep_54 + rep_64.*rep_9).*W(2,:) + (rep_11.*rep_64 + rep_41.*rep_60 + rep_42.*rep_56 + rep_44.*rep_54 - rep_63.*rep_9).*W(3,:);...
		 (rep_11.*rep_69 + rep_41.*rep_66).*W(6,:) + (-rep_14.*rep_66 + rep_3.*rep_68).*W(4,:) + (rep_48.*rep_66 + rep_69.*rep_9).*W(5,:) + (rep_14.*rep_22.*rep_68 - rep_14.*rep_71 + rep_3.*rep_70 - rep_58.*rep_66).*W(1,:) + (rep_11.*rep_72 + rep_48.*rep_71 + rep_51.*rep_68 + rep_52.*rep_66 + rep_73.*rep_9).*W(2,:) + (rep_11.*rep_73 + rep_41.*rep_71 + rep_42.*rep_68 + rep_44.*rep_66 - rep_72.*rep_9).*W(3,:);...
		 (rep_11.*rep_78 + rep_41.*rep_75).*W(6,:) + (-rep_14.*rep_75 + rep_3.*rep_77).*W(4,:) + (rep_48.*rep_75 + rep_78.*rep_9).*W(5,:) + (rep_14.*rep_22.*rep_77 - rep_14.*rep_80 + rep_3.*rep_79 - rep_58.*rep_75).*W(1,:) + (rep_11.*rep_81 + rep_48.*rep_80 + rep_51.*rep_77 + rep_52.*rep_75 + rep_82.*rep_9).*W(2,:) + (rep_11.*rep_82 + rep_41.*rep_80 + rep_42.*rep_77 + rep_44.*rep_75 - rep_81.*rep_9).*W(3,:);...
		 rep_86.*rep_87 - rep_86.*rep_88 + (rep_100.*rep_86 + rep_41.*rep_98 + rep_92.*rep_94).*W(3,:) + (-rep_14.*rep_98 + rep_3.*rep_92 + rep_86.*rep_90).*W(1,:) + (rep_48.*rep_98 + rep_86.*rep_99 + rep_92.*rep_96).*W(2,:);...
		 rep_102.*rep_87 - rep_102.*rep_88 + (rep_100.*rep_102 + rep_103.*rep_94 + rep_104.*rep_41).*W(3,:) + (rep_102.*rep_90 + rep_103.*rep_3 - rep_104.*rep_14).*W(1,:) + (rep_102.*rep_99 + rep_103.*rep_96 + rep_104.*rep_48).*W(2,:)];
end