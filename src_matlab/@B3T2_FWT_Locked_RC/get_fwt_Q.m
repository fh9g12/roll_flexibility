function out = get_fwt_Q(p,U,W,Xi)
	%GET_FWT_Q Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = sin(rep_2);
	rep_4 = 2*y_h;
	rep_5 = 3*rep_1;
	rep_6 = y_h.^3;
	rep_7 = 4*rep_6;
	rep_8 = rep_4.*U(1) + rep_5.*U(2) + rep_7.*U(3);
	rep_9 = sin(rep_8);
	rep_10 = rep_9.^2;
	rep_11 = rep_3.*rep_4;
	rep_12 = cos(rep_8);
	rep_13 = rep_12.^2;
	rep_14 = -rep_10.*rep_11 - rep_11.*rep_13;
	rep_15 = cos(rep_2);
	rep_16 = rep_15.*rep_4;
	rep_17 = rep_10.*rep_16 + rep_13.*rep_16;
	rep_18 = rep_14.*rep_15;
	rep_19 = rep_17.*rep_3;
	rep_20 = rep_12.*Xi(2,:);
	rep_21 = rep_9.*Xi(3,:);
	rep_22 = y_h + rep_20 - rep_21;
	rep_23 = -rep_22;
	rep_24 = rep_3.*rep_9;
	rep_25 = rep_15.*Xi(1,:);
	rep_26 = rep_9.*Xi(2,:);
	rep_27 = rep_26.*rep_3;
	rep_28 = rep_12.*Xi(3,:);
	rep_29 = rep_28.*rep_3;
	rep_30 = rep_25 + rep_27 + rep_29;
	rep_31 = rep_3.*rep_30;
	rep_32 = rep_3.*Xi(1,:);
	rep_33 = rep_15.*rep_26;
	rep_34 = rep_15.*rep_28;
	rep_35 = rep_1.*(y_h.*U(2) + rep_1.*U(3) + U(1)) - rep_32 + rep_33 + rep_34;
	rep_36 = rep_12.*rep_35;
	rep_37 = -rep_12.*rep_31 - rep_15.*rep_36 + rep_22.*rep_9;
	rep_38 = rep_37.*rep_4;
	rep_39 = rep_12.*rep_22;
	rep_40 = -rep_15.*rep_35.*rep_9 - rep_31.*rep_9 - rep_39;
	rep_41 = 2*y_h.*rep_12.*rep_3.*rep_40 + 2*y_h.*rep_12.*rep_3.*Xi(2,:) - rep_11.*rep_21 - rep_24.*rep_38;
	rep_42 = rep_15.*rep_9;
	rep_43 = rep_12.*rep_15;
	rep_44 = rep_1 + rep_16.*rep_20 - rep_16.*rep_21 - rep_38.*rep_42 + rep_4.*rep_40.*rep_43;
	rep_45 = -rep_30;
	rep_46 = -rep_3.*rep_39 + rep_45.*rep_9;
	rep_47 = -rep_23.*rep_43 + rep_35.*rep_9;
	rep_48 = rep_12.*rep_37;
	rep_49 = rep_40.*rep_9;
	rep_50 = -rep_26.*rep_4 - rep_28.*rep_4 - rep_4.*rep_48 - rep_4.*rep_49;
	rep_51 = rep_3.*rep_41;
	rep_52 = -rep_12.*rep_45 - rep_22.*rep_3.*rep_9;
	rep_53 = -rep_23.*rep_42 - rep_36;
	rep_54 = rep_3.*rep_5;
	rep_55 = -rep_10.*rep_54 - rep_13.*rep_54;
	rep_56 = rep_15.*rep_5;
	rep_57 = rep_10.*rep_56 + rep_13.*rep_56;
	rep_58 = rep_3.*rep_57;
	rep_59 = rep_15.*rep_22;
	rep_60 = rep_37.*rep_5;
	rep_61 = 3*rep_1.*rep_12.*rep_3.*rep_40 + 3*rep_1.*rep_12.*rep_3.*Xi(2,:) - rep_21.*rep_54 - rep_24.*rep_60;
	rep_62 = rep_20.*rep_56 - rep_21.*rep_56 + rep_40.*rep_43.*rep_5 - rep_42.*rep_60 + rep_6;
	rep_63 = -rep_26.*rep_5 - rep_28.*rep_5 - rep_48.*rep_5 - rep_49.*rep_5;
	rep_64 = rep_3.*rep_61;
	rep_65 = rep_3.*rep_7;
	rep_66 = -rep_10.*rep_65 - rep_13.*rep_65;
	rep_67 = rep_15.*rep_7;
	rep_68 = rep_10.*rep_67 + rep_13.*rep_67;
	rep_69 = rep_3.*rep_68;
	rep_70 = rep_37.*rep_7;
	rep_71 = 4*rep_12.*rep_3.*rep_40.*rep_6 + 4*rep_12.*rep_3.*rep_6.*Xi(2,:) - rep_21.*rep_65 - rep_24.*rep_70;
	rep_72 = y_h.^4 + rep_20.*rep_67 - rep_21.*rep_67 + rep_40.*rep_43.*rep_7 - rep_42.*rep_70;
	rep_73 = -rep_26.*rep_7 - rep_28.*rep_7 - rep_48.*rep_7 - rep_49.*rep_7;
	rep_74 = rep_3.*rep_71;
	rep_75 = rep_3.^2;
	rep_76 = rep_15.^2;
	rep_77 = y_h.*rep_76;
	rep_78 = y_h.*rep_75 + rep_10.*rep_77 + rep_13.*rep_77;
	rep_79 = rep_12.*W(5,:);
	rep_80 = rep_9.*W(6,:);
	rep_81 = -rep_35;
	rep_82 = -rep_15.*rep_81 + rep_31;
	rep_83 = rep_15.*rep_30;
	rep_84 = rep_3.*rep_35 - rep_83;
	rep_85 = y_h.*rep_84;
	rep_86 = y_h.*rep_37;
	rep_87 = y_h.*rep_40;
	rep_88 = -y_h.*rep_32 + y_h.*rep_33 + y_h.*rep_34 - rep_3.*rep_85 + rep_42.*rep_87 + rep_43.*rep_86;
	rep_89 = rep_12.*rep_3;
	rep_90 = -y_h.*rep_25 - y_h.*rep_27 - y_h.*rep_29 - rep_15.*rep_85 - rep_24.*rep_87 - rep_86.*rep_89;
	rep_91 = -rep_24.*rep_81 - rep_83.*rep_9;
	rep_92 = -rep_12.*rep_83 - rep_81.*rep_89;
	rep_93 = rep_1.*rep_76;
	rep_94 = rep_1.*rep_75 + rep_10.*rep_93 + rep_13.*rep_93;
	rep_95 = rep_1.*rep_84;
	rep_96 = rep_1.*rep_37;
	rep_97 = rep_1.*rep_40;
	rep_98 = -rep_1.*rep_32 + rep_1.*rep_33 + rep_1.*rep_34 - rep_3.*rep_95 + rep_42.*rep_97 + rep_43.*rep_96;
	rep_99 = -rep_1.*rep_25 - rep_1.*rep_27 - rep_1.*rep_29 - rep_15.*rep_95 - rep_24.*rep_97 - rep_89.*rep_96;
	%% create output vector
	out = [(rep_12.*rep_18 + rep_12.*rep_19).*W(6,:) + (-rep_14.*rep_3 + rep_15.*rep_17).*W(4,:) + (rep_18.*rep_9 + rep_19.*rep_9).*W(5,:) + (rep_15.*rep_41 + rep_17.*rep_23.*rep_3 - rep_18.*rep_22 - rep_3.*rep_44).*W(1,:) + (rep_12.*rep_50 + rep_14.*rep_52 + rep_17.*rep_53 + rep_42.*rep_44 + rep_51.*rep_9).*W(2,:) + (rep_12.*rep_51 + rep_14.*rep_46 + rep_17.*rep_47 + rep_43.*rep_44 - rep_50.*rep_9).*W(3,:);...
		 (rep_12.*rep_58 + rep_43.*rep_55).*W(6,:) + (rep_15.*rep_57 - rep_3.*rep_55).*W(4,:) + (rep_42.*rep_55 + rep_58.*rep_9).*W(5,:) + (rep_15.*rep_61 + rep_23.*rep_3.*rep_57 - rep_3.*rep_62 - rep_55.*rep_59).*W(1,:) + (rep_12.*rep_63 + rep_42.*rep_62 + rep_52.*rep_55 + rep_53.*rep_57 + rep_64.*rep_9).*W(2,:) + (rep_12.*rep_64 + rep_43.*rep_62 + rep_46.*rep_55 + rep_47.*rep_57 - rep_63.*rep_9).*W(3,:);...
		 (rep_12.*rep_69 + rep_43.*rep_66).*W(6,:) + (rep_15.*rep_68 - rep_3.*rep_66).*W(4,:) + (rep_42.*rep_66 + rep_69.*rep_9).*W(5,:) + (rep_15.*rep_71 + rep_23.*rep_3.*rep_68 - rep_3.*rep_72 - rep_59.*rep_66).*W(1,:) + (rep_12.*rep_73 + rep_42.*rep_72 + rep_52.*rep_66 + rep_53.*rep_68 + rep_74.*rep_9).*W(2,:) + (rep_12.*rep_74 + rep_43.*rep_72 + rep_46.*rep_66 + rep_47.*rep_68 - rep_73.*rep_9).*W(3,:);...
		 rep_78.*rep_79 - rep_78.*rep_80 + (rep_15.*rep_88 - rep_3.*rep_90 + rep_78.*rep_82).*W(1,:) + (rep_24.*rep_88 + rep_42.*rep_90 + rep_78.*rep_91).*W(2,:) + (rep_43.*rep_90 + rep_78.*rep_92 + rep_88.*rep_89).*W(3,:);...
		 rep_79.*rep_94 - rep_80.*rep_94 + (rep_15.*rep_98 - rep_3.*rep_99 + rep_82.*rep_94).*W(1,:) + (rep_24.*rep_98 + rep_42.*rep_99 + rep_91.*rep_94).*W(2,:) + (rep_43.*rep_99 + rep_89.*rep_98 + rep_92.*rep_94).*W(3,:)];
end