function out = get_fwt_Q(p,U,W,Xi)
	%GET_FWT_Q Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = cos(rep_1);
	rep_3 = sin(U(1));
	rep_4 = sin(rep_1);
	rep_5 = rep_4.^2;
	rep_6 = cos(U(1));
	rep_7 = y_h.*U(2);
	rep_8 = 2*rep_7;
	rep_9 = cos(rep_8);
	rep_10 = sin(rep_8);
	rep_11 = rep_10.*rep_3;
	rep_12 = rep_11.*rep_2;
	rep_13 = rep_12 - rep_6.*rep_9;
	rep_14 = -rep_13;
	rep_15 = rep_10.*rep_6;
	rep_16 = rep_3.*rep_9;
	rep_17 = rep_16.*rep_2;
	rep_18 = rep_15 + rep_17;
	rep_19 = -rep_18;
	rep_20 = rep_14.^2 + rep_19.^2 + rep_3.^2.*rep_5;
	rep_21 = rep_4.*rep_6;
	rep_22 = rep_2.*rep_21;
	rep_23 = rep_6.*rep_9;
	rep_24 = rep_11 - rep_2.*rep_23;
	rep_25 = rep_4.*rep_9;
	rep_26 = rep_15.*rep_2;
	rep_27 = rep_16 + rep_26;
	rep_28 = -rep_27;
	rep_29 = rep_10.*rep_4;
	rep_30 = rep_22 + rep_24.*rep_25 + rep_28.*rep_29;
	rep_31 = -rep_24;
	rep_32 = rep_2.*Xi(1,:);
	rep_33 = rep_25.*Xi(3,:) + rep_29.*Xi(2,:) + rep_32;
	rep_34 = -rep_33;
	rep_35 = rep_3.*rep_4;
	rep_36 = y_h.*(-rep_3.*rep_7 + rep_6) + rep_14.*Xi(2,:) + rep_19.*Xi(3,:) + rep_35.*Xi(1,:);
	rep_37 = -rep_2.*rep_36 - rep_34.*rep_35;
	rep_38 = rep_3 + rep_6.*rep_7;
	rep_39 = rep_21.*Xi(1,:);
	rep_40 = y_h.*rep_38 + rep_27.*Xi(2,:) + rep_31.*Xi(3,:) - rep_39;
	rep_41 = -rep_36;
	rep_42 = rep_21.*rep_41 - rep_35.*rep_40;
	rep_43 = rep_13.*rep_36 + rep_28.*rep_40 - rep_29.*rep_33;
	rep_44 = rep_18.*rep_36 + rep_24.*rep_40 - rep_25.*rep_33;
	rep_45 = -rep_2.*rep_33 - rep_35.*rep_36 + rep_4.*rep_40.*rep_6;
	rep_46 = rep_14.*rep_43 + rep_19.*rep_44 + rep_35.*rep_45 + rep_36;
	rep_47 = -y_h.*rep_38 + rep_21.*rep_45 + rep_24.*rep_44 + rep_24.*Xi(3,:) + rep_28.*rep_43 + rep_28.*Xi(2,:) + rep_39;
	rep_48 = rep_18.*rep_34 - rep_25.*rep_36;
	rep_49 = rep_18.*rep_40 + rep_24.*rep_41;
	rep_50 = rep_13.*rep_34 - rep_29.*rep_36;
	rep_51 = rep_13.*rep_40 + rep_28.*rep_41;
	rep_52 = 2*y_h;
	rep_53 = rep_29.*rep_52;
	rep_54 = 2*y_h.*rep_27.*rep_4.*rep_9 - rep_31.*rep_53;
	rep_55 = rep_12.*rep_52 - rep_23.*rep_52;
	rep_56 = -rep_15.*rep_52 - rep_17.*rep_52;
	rep_57 = rep_25.*rep_55 + rep_29.*rep_56;
	rep_58 = 2*y_h.*rep_2.*rep_6.*rep_9 - rep_11.*rep_52;
	rep_59 = -rep_16.*rep_52 - rep_26.*rep_52;
	rep_60 = rep_14.*rep_58 + rep_19.*rep_59;
	rep_61 = -rep_40;
	rep_62 = -rep_2.*rep_61 + rep_21.*rep_33;
	rep_63 = 2*y_h.*rep_4.*rep_43.*rep_9 + 2*y_h.*rep_4.*rep_9.*Xi(2,:) - rep_44.*rep_53 - rep_53.*Xi(3,:);
	rep_64 = y_h.^2;
	rep_65 = -rep_3.*rep_64 + rep_43.*rep_56 + rep_44.*rep_55 + rep_55.*Xi(3,:) + rep_56.*Xi(2,:);
	rep_66 = rep_43.*rep_58 + rep_44.*rep_59 + rep_58.*Xi(2,:) + rep_59.*Xi(3,:) + rep_6.*rep_64;
	rep_67 = rep_24.*rep_33 - rep_25.*rep_61;
	rep_68 = rep_28.*rep_33 - rep_29.*rep_61;
	rep_69 = y_h.*rep_3;
	rep_70 = y_h.*rep_5;
	rep_71 = rep_3.*rep_70;
	rep_72 = rep_10.^2.*rep_71 + rep_2.^2.*rep_69 + rep_71.*rep_9.^2;
	rep_73 = y_h.*rep_2;
	rep_74 = rep_10.*rep_73;
	rep_75 = rep_73.*rep_9;
	rep_76 = rep_27.*rep_74 + rep_31.*rep_75 + rep_6.*rep_70;
	rep_77 = y_h.*rep_4;
	rep_78 = rep_15.*rep_77;
	rep_79 = rep_23.*rep_77;
	rep_80 = -rep_14.*rep_78 - rep_19.*rep_79 - rep_22.*rep_69;
	rep_81 = rep_43.*rep_74 + rep_44.*rep_75 - rep_45.*rep_77 + rep_74.*Xi(2,:) + rep_75.*Xi(3,:) - rep_77.*Xi(1,:);
	rep_82 = rep_11.*rep_77;
	rep_83 = rep_16.*rep_77;
	rep_84 = rep_2.*rep_45.*rep_69 + rep_32.*rep_69 + rep_43.*rep_82 + rep_44.*rep_83 + rep_82.*Xi(2,:) + rep_83.*Xi(3,:);
	rep_85 = -y_h.*rep_32.*rep_6 - rep_43.*rep_78 - rep_44.*rep_79 - rep_45.*rep_6.*rep_73 - rep_78.*Xi(2,:) - rep_79.*Xi(3,:);
	%% create output vector
	out = [(rep_2.*rep_20 - rep_21.*rep_30).*W(4, 1) + (rep_20.*rep_25 + rep_30.*rep_31).*W(6, 1) + (rep_20.*rep_29 + rep_27.*rep_30).*W(5, 1) + (rep_14.*rep_47 + rep_20.*rep_51 + rep_27.*rep_46 + rep_30.*rep_50).*W(2, 1) + (rep_19.*rep_47 + rep_20.*rep_49 + rep_30.*rep_48 + rep_31.*rep_46).*W(3, 1) + (rep_20.*rep_42 - rep_21.*rep_46 + rep_30.*rep_37 + rep_35.*rep_47).*W(1, 1);...
		 (rep_14.*rep_54 + rep_27.*rep_57 + rep_29.*rep_60).*W(5, 1) + (rep_19.*rep_54 + rep_25.*rep_60 + rep_31.*rep_57).*W(6, 1) + (rep_2.*rep_60 - rep_21.*rep_57 + rep_35.*rep_54).*W(4, 1) + (rep_14.*rep_65 + rep_27.*rep_66 + rep_29.*rep_63 + rep_50.*rep_57 + rep_51.*rep_60 + rep_54.*rep_68).*W(2, 1) + (rep_19.*rep_65 + rep_25.*rep_63 + rep_31.*rep_66 + rep_48.*rep_57 + rep_49.*rep_60 + rep_54.*rep_67).*W(3, 1) + (rep_2.*rep_63 - rep_21.*rep_66 + rep_35.*rep_65 + rep_37.*rep_57 + rep_42.*rep_60 + rep_54.*rep_62).*W(1, 1);...
		 (rep_14.*rep_76 + rep_27.*rep_72 + rep_29.*rep_80).*W(5, 1) + (rep_19.*rep_76 + rep_25.*rep_80 + rep_31.*rep_72).*W(6, 1) + (rep_2.*rep_80 - rep_21.*rep_72 + rep_35.*rep_76).*W(4, 1) + (rep_14.*rep_84 + rep_27.*rep_85 + rep_29.*rep_81 + rep_50.*rep_72 + rep_51.*rep_80 + rep_68.*rep_76).*W(2, 1) + (rep_19.*rep_84 + rep_25.*rep_81 + rep_31.*rep_85 + rep_48.*rep_72 + rep_49.*rep_80 + rep_67.*rep_76).*W(3, 1) + (rep_2.*rep_81 - rep_21.*rep_85 + rep_35.*rep_84 + rep_37.*rep_72 + rep_42.*rep_80 + rep_62.*rep_76).*W(1, 1)];
end