function out = get_fwt_Q_RHS(p,U,W,Xi)
	%GET_FWT_Q_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:57 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(7));
	rep_2 = b_i.^(-2);
	rep_3 = y_h.*rep_2;
	rep_4 = rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = 2*rep_3;
	rep_7 = rep_6.*U(5);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(7));
	rep_10 = sin(Lambda);
	rep_11 = cos(rep_4);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = cos(Lambda);
	rep_15 = rep_14.*rep_5;
	rep_16 = rep_13.*rep_15;
	rep_17 = rep_12 - rep_16;
	rep_18 = rep_17.*rep_9;
	rep_19 = -rep_1.*rep_5.*rep_8 + rep_18;
	rep_20 = -rep_19;
	rep_21 = rep_1.*rep_13;
	rep_22 = rep_14.*rep_8.*rep_9;
	rep_23 = -rep_21 + rep_22;
	rep_24 = rep_10.^2;
	rep_25 = rep_24.*rep_8;
	rep_26 = rep_13.*rep_9;
	rep_27 = rep_14.*rep_26;
	rep_28 = rep_14.^2;
	rep_29 = rep_1.*rep_8;
	rep_30 = rep_25 + rep_27 + rep_28.*rep_29;
	rep_31 = rep_14.*rep_29;
	rep_32 = -rep_10.*rep_14.*rep_8 + rep_10.*rep_26 + rep_10.*rep_31;
	rep_33 = -rep_32;
	rep_34 = rep_23.^2 + rep_30.^2 + rep_33.^2;
	rep_35 = rep_11.*rep_29;
	rep_36 = rep_10.*rep_5;
	rep_37 = rep_11.*rep_14;
	rep_38 = rep_13.*rep_37;
	rep_39 = rep_36 + rep_38;
	rep_40 = rep_39.*rep_9;
	rep_41 = rep_35 + rep_40;
	rep_42 = -rep_41;
	rep_43 = rep_8.*rep_9;
	rep_44 = rep_36.*rep_43;
	rep_45 = rep_13.*rep_36;
	rep_46 = rep_37 + rep_45;
	rep_47 = rep_1.*rep_17;
	rep_48 = rep_10.*rep_47 + rep_14.*rep_46 + rep_44;
	rep_49 = rep_12.*rep_43;
	rep_50 = rep_12.*rep_13;
	rep_51 = -rep_15 + rep_50;
	rep_52 = -rep_1.*rep_10.*rep_39 + rep_14.*rep_51 + rep_49;
	rep_53 = -rep_52;
	rep_54 = rep_1.*rep_39;
	rep_55 = rep_10.*rep_51 - rep_11.*rep_14.*rep_8.*rep_9 + rep_14.*rep_54;
	rep_56 = -rep_55;
	rep_57 = rep_15.*rep_43;
	rep_58 = -rep_10.*rep_46 + rep_14.*rep_47 + rep_57;
	rep_59 = -rep_58;
	rep_60 = rep_20.*rep_42 + rep_48.*rep_53 + rep_56.*rep_59;
	rep_61 = y_h + rep_23.*Xi(3,:) + rep_30.*Xi(2,:) + rep_33.*Xi(1,:);
	rep_62 = -rep_61;
	rep_63 = -rep_23;
	rep_64 = y_h.^2.*rep_2;
	rep_65 = rep_64.*U(2);
	rep_66 = rep_41.*Xi(3,:) + rep_52.*Xi(1,:) + rep_55.*Xi(2,:) + rep_65;
	rep_67 = rep_42.*rep_62 + rep_63.*rep_66;
	rep_68 = rep_20.*Xi(3,:) + rep_48.*Xi(1,:) + rep_59.*Xi(2,:);
	rep_69 = -rep_68;
	rep_70 = rep_19.*rep_61 + rep_63.*rep_69;
	rep_71 = rep_19.*rep_68 + rep_42.*rep_66 + rep_61.*rep_63;
	rep_72 = -rep_30;
	rep_73 = rep_56.*rep_66 + rep_58.*rep_68 + rep_61.*rep_72;
	rep_74 = -rep_48;
	rep_75 = rep_32.*rep_61 + rep_53.*rep_66 + rep_68.*rep_74;
	rep_76 = rep_23.*rep_71 + rep_30.*rep_73 + rep_33.*rep_75 + rep_61;
	rep_77 = rep_42.*rep_71 + rep_42.*Xi(3,:) + rep_53.*rep_75 + rep_53.*Xi(1,:) + rep_56.*rep_73 + rep_56.*Xi(2,:) - rep_65;
	rep_78 = rep_56.*rep_62 + rep_66.*rep_72;
	rep_79 = rep_58.*rep_61 + rep_69.*rep_72;
	rep_80 = rep_32.*rep_66 + rep_53.*rep_62;
	rep_81 = rep_32.*rep_69 + rep_61.*rep_74;
	rep_82 = rep_21.*rep_6;
	rep_83 = rep_37.*rep_43;
	rep_84 = -rep_11.*rep_82 + rep_6.*rep_83;
	rep_85 = rep_25.*rep_6;
	rep_86 = rep_26.*rep_6;
	rep_87 = rep_28.*rep_6;
	rep_88 = rep_11.*rep_85 + rep_35.*rep_87 + rep_37.*rep_86;
	rep_89 = rep_31.*rep_6;
	rep_90 = 2*y_h.*rep_10.*rep_11.*rep_14.*rep_2.*rep_8 - rep_12.*rep_86 - rep_12.*rep_89;
	rep_91 = rep_23.*rep_84 + rep_30.*rep_88 + rep_33.*rep_90;
	rep_92 = -rep_27.*rep_6 - rep_29.*rep_6;
	rep_93 = rep_13.*rep_6;
	rep_94 = 2*y_h.*rep_1.*rep_10.*rep_13.*rep_14.*rep_2 - rep_10.*rep_14.*rep_93 - rep_10.*rep_43.*rep_6;
	rep_95 = 2*y_h.*rep_14.*rep_2.*rep_8.*rep_9 - rep_24.*rep_93 - rep_28.*rep_82;
	rep_96 = rep_20.*rep_92 + rep_48.*rep_94 + rep_59.*rep_95;
	rep_97 = -rep_5.*rep_82 + rep_57.*rep_6;
	rep_98 = 2*y_h.*rep_10.*rep_14.*rep_2.*rep_5.*rep_8 - rep_36.*rep_86 - rep_36.*rep_89;
	rep_99 = rep_29.*rep_5;
	rep_100 = rep_15.*rep_86 + rep_5.*rep_85 + rep_87.*rep_99;
	rep_101 = rep_100.*rep_55 + rep_41.*rep_97 + rep_52.*rep_98;
	rep_102 = -rep_66;
	rep_103 = rep_102.*rep_19 + rep_42.*rep_68;
	rep_104 = rep_71.*rep_92 + rep_73.*rep_95 + rep_75.*rep_94 + rep_92.*Xi(3,:) + rep_94.*Xi(1,:) + rep_95.*Xi(2,:);
	rep_105 = rep_71.*rep_84 + rep_73.*rep_88 + rep_75.*rep_90 + rep_84.*Xi(3,:) + rep_88.*Xi(2,:) + rep_90.*Xi(1,:);
	rep_106 = rep_100.*rep_73 + rep_100.*Xi(2,:) + rep_71.*rep_97 + rep_75.*rep_98 + rep_97.*Xi(3,:) + rep_98.*Xi(1,:);
	rep_107 = rep_102.*rep_58 + rep_56.*rep_68;
	rep_108 = rep_102.*rep_74 + rep_53.*rep_68;
	rep_109 = rep_12.*rep_3 - rep_16.*rep_3;
	rep_110 = rep_109.*rep_9 - rep_3.*rep_99;
	rep_111 = -rep_3.*rep_37 - rep_3.*rep_45;
	rep_112 = rep_1.*rep_109;
	rep_113 = rep_10.*rep_111 + rep_112.*rep_14 + rep_3.*rep_57;
	rep_114 = -rep_10.*rep_112 + rep_111.*rep_14 - rep_3.*rep_44;
	rep_115 = rep_110.*rep_23 + rep_113.*rep_30 + rep_114.*rep_33;
	rep_116 = -rep_3.*rep_36 - rep_3.*rep_38;
	rep_117 = y_h.*rep_1.*rep_11.*rep_2.*rep_8 - rep_116.*rep_9;
	rep_118 = -rep_15.*rep_3 + rep_3.*rep_50;
	rep_119 = rep_1.*rep_116;
	rep_120 = rep_10.*rep_119 + rep_118.*rep_14 + rep_3.*rep_49;
	rep_121 = rep_10.*rep_118 - rep_119.*rep_14 - rep_3.*rep_83;
	rep_122 = rep_117.*rep_41 + rep_120.*rep_52 + rep_121.*rep_55;
	rep_123 = rep_110.*rep_71 + rep_110.*Xi(3,:) + rep_113.*rep_73 + rep_113.*Xi(2,:) + rep_114.*rep_75 + rep_114.*Xi(1,:);
	rep_124 = rep_117.*rep_71 + rep_117.*Xi(3,:) + rep_120.*rep_75 + rep_120.*Xi(1,:) + rep_121.*rep_73 + rep_121.*Xi(2,:);
	rep_125 = -rep_11.*rep_43 + rep_54;
	rep_126 = rep_10.*rep_40 + rep_12.*rep_29;
	rep_127 = -rep_14.*rep_40 - rep_29.*rep_37;
	rep_128 = rep_125.*rep_23 + rep_126.*rep_33 + rep_127.*rep_30;
	rep_129 = rep_26 + rep_31;
	rep_130 = -rep_10.*rep_21 + rep_10.*rep_22;
	rep_131 = rep_1.*rep_13.*rep_14 - rep_28.*rep_43;
	rep_132 = rep_129.*rep_20 + rep_130.*rep_48 + rep_131.*rep_59;
	rep_133 = -rep_43.*rep_5 - rep_47;
	rep_134 = rep_1.*rep_10.*rep_5.*rep_8 - rep_10.*rep_18;
	rep_135 = rep_14.*rep_18 - rep_15.*rep_29;
	rep_136 = rep_133.*rep_41 + rep_134.*rep_52 + rep_135.*rep_55;
	rep_137 = rep_129.*rep_71 + rep_129.*Xi(3,:) + rep_130.*rep_75 + rep_130.*Xi(1,:) + rep_131.*rep_73 + rep_131.*Xi(2,:);
	rep_138 = rep_125.*rep_71 + rep_125.*Xi(3,:) + rep_126.*rep_75 + rep_126.*Xi(1,:) + rep_127.*rep_73 + rep_127.*Xi(2,:);
	rep_139 = rep_133.*rep_71 + rep_133.*Xi(3,:) + rep_134.*rep_75 + rep_134.*Xi(1,:) + rep_135.*rep_73 + rep_135.*Xi(2,:);
	%% create output vector
	out = [(rep_20.*rep_34 + rep_41.*rep_60).*W(6,:) + (rep_34.*rep_48 + rep_52.*rep_60).*W(4,:) + (rep_34.*rep_59 + rep_55.*rep_60).*W(5,:) + (rep_23.*rep_77 + rep_34.*rep_67 + rep_41.*rep_76 + rep_60.*rep_70).*W(3,:) + (rep_30.*rep_77 + rep_34.*rep_78 + rep_55.*rep_76 + rep_60.*rep_79).*W(2,:) + (rep_33.*rep_77 + rep_34.*rep_80 + rep_52.*rep_76 + rep_60.*rep_81).*W(1,:);...
		 rep_41.*rep_64.*W(3,:) + rep_52.*rep_64.*W(1,:) + rep_55.*rep_64.*W(2,:);...
		 0.*W(1,:);...
		 0.*W(1,:);...
		 (rep_101.*rep_23 + rep_20.*rep_91 + rep_41.*rep_96).*W(6,:) + (rep_101.*rep_30 + rep_55.*rep_96 + rep_59.*rep_91).*W(5,:) + (rep_101.*rep_33 + rep_48.*rep_91 + rep_52.*rep_96).*W(4,:) + (rep_101.*rep_103 + rep_104.*rep_23 + rep_105.*rep_41 + rep_106.*rep_20 + rep_67.*rep_91 + rep_70.*rep_96).*W(3,:) + (rep_101.*rep_107 + rep_104.*rep_30 + rep_105.*rep_55 + rep_106.*rep_59 + rep_78.*rep_91 + rep_79.*rep_96).*W(2,:) + (rep_101.*rep_108 + rep_104.*rep_33 + rep_105.*rep_52 + rep_106.*rep_48 + rep_80.*rep_91 + rep_81.*rep_96).*W(1,:);...
		 (rep_115.*rep_20 + rep_122.*rep_23).*W(6,:) + (rep_115.*rep_48 + rep_122.*rep_33).*W(4,:) + (rep_115.*rep_59 + rep_122.*rep_30).*W(5,:) + (rep_103.*rep_122 + rep_115.*rep_67 + rep_123.*rep_41 + rep_124.*rep_20).*W(3,:) + (rep_107.*rep_122 + rep_115.*rep_78 + rep_123.*rep_55 + rep_124.*rep_59).*W(2,:) + (rep_108.*rep_122 + rep_115.*rep_80 + rep_123.*rep_52 + rep_124.*rep_48).*W(1,:);...
		 (rep_128.*rep_20 + rep_132.*rep_41 + rep_136.*rep_23).*W(6,:) + (rep_128.*rep_48 + rep_132.*rep_52 + rep_136.*rep_33).*W(4,:) + (rep_128.*rep_59 + rep_132.*rep_55 + rep_136.*rep_30).*W(5,:) + (rep_103.*rep_136 + rep_128.*rep_67 + rep_132.*rep_70 + rep_137.*rep_23 + rep_138.*rep_41 + rep_139.*rep_20).*W(3,:) + (rep_107.*rep_136 + rep_128.*rep_78 + rep_132.*rep_79 + rep_137.*rep_30 + rep_138.*rep_55 + rep_139.*rep_59).*W(2,:) + (rep_108.*rep_136 + rep_128.*rep_80 + rep_132.*rep_81 + rep_137.*rep_33 + rep_138.*rep_52 + rep_139.*rep_48).*W(1,:)];
end