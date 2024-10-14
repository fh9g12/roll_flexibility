function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.*U(3);
	rep_3 = sin(rep_2);
	rep_4 = rep_1.*rep_3;
	rep_5 = sin(U(4));
	rep_6 = y_h.*U(2);
	rep_7 = 2*rep_6;
	rep_8 = cos(rep_7);
	rep_9 = rep_5.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_2);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_13.*rep_4;
	rep_15 = rep_12 + rep_14;
	rep_16 = cos(U(4));
	rep_17 = rep_1.*rep_11;
	rep_18 = rep_10.*rep_3;
	rep_19 = rep_13.*rep_18;
	rep_20 = rep_17 - rep_19;
	rep_21 = rep_16.*rep_20;
	rep_22 = y_h.*U(6);
	rep_23 = 2*rep_22;
	rep_24 = y_h.*U(7);
	rep_25 = rep_12.*rep_13;
	rep_26 = rep_23.*rep_8;
	rep_27 = -rep_18.*rep_26 - rep_24.*rep_25 - rep_24.*rep_4;
	rep_28 = rep_16.*rep_8.*U(8);
	rep_29 = rep_17.*rep_24;
	rep_30 = rep_23.*rep_5;
	rep_31 = rep_20.*rep_5;
	rep_32 = rep_1.*U(8);
	rep_33 = rep_13.*rep_17;
	rep_34 = -rep_18.*rep_24 + rep_24.*rep_33 + rep_26.*rep_4;
	rep_35 = rep_16.*rep_27;
	rep_36 = rep_12.*rep_24;
	rep_37 = rep_10.*U(8);
	rep_38 = (y_h.*rep_11.*rep_16.*rep_8.*U(7) - rep_13.*rep_16.*rep_23.*rep_3 - rep_21.*U(8) - rep_27.*rep_5 - rep_3.*rep_5.*rep_8.*U(8)).*Xi(3,:) + (rep_1.*rep_34 - rep_10.*rep_35 - rep_18.*rep_28 + rep_19.*rep_30 + rep_31.*rep_37 - rep_36.*rep_9).*Xi(2,:) + (rep_1.*rep_35 + rep_10.*rep_34 - rep_14.*rep_30 + rep_28.*rep_4 + rep_29.*rep_9 - rep_31.*rep_32).*Xi(1,:);
	rep_39 = sin(U(1));
	rep_40 = rep_13.*rep_39;
	rep_41 = cos(U(1));
	rep_42 = rep_41.*rep_8;
	rep_43 = -rep_11.*rep_42 + rep_40;
	rep_44 = rep_43.*rep_5;
	rep_45 = rep_39.*rep_8;
	rep_46 = -rep_18 + rep_33;
	rep_47 = rep_41.*rep_46;
	rep_48 = rep_1.*rep_45 + rep_47;
	rep_49 = rep_25 + rep_4;
	rep_50 = rep_41.*rep_49;
	rep_51 = rep_10.*rep_45 + rep_50;
	rep_52 = rep_16.*rep_51;
	rep_53 = rep_41.*U(5);
	rep_54 = rep_39.*U(5);
	rep_55 = rep_54.*rep_8;
	rep_56 = rep_24.*rep_3;
	rep_57 = rep_13.*rep_41;
	rep_58 = rep_23.*rep_57;
	rep_59 = rep_11.*rep_55 + rep_11.*rep_58 + rep_13.*rep_53 + rep_23.*rep_45 + rep_42.*rep_56;
	rep_60 = rep_23.*rep_40;
	rep_61 = rep_39.*rep_49;
	rep_62 = rep_12.*rep_26 - rep_19.*rep_24 + rep_29;
	rep_63 = rep_10.*rep_41.*rep_8.*U(5) - rep_10.*rep_60 + rep_41.*rep_62 - rep_61.*U(5);
	rep_64 = rep_16.*rep_43;
	rep_65 = rep_5.*rep_51;
	rep_66 = rep_5.*rep_59;
	rep_67 = rep_39.*rep_46;
	rep_68 = 2*y_h.*rep_1.*rep_11.*rep_8.*U(6) - rep_14.*rep_24 - rep_36;
	rep_69 = rep_1.*rep_41.*rep_8.*U(5) - rep_1.*rep_60 + rep_41.*rep_68 - rep_67.*U(5);
	rep_70 = rep_16.*rep_63;
	rep_71 = y_h.*(rep_22.*rep_41 + rep_53 - rep_54.*rep_6) + (-rep_16.*rep_59 + rep_44.*U(8) + rep_5.*rep_63 + rep_52.*U(8)).*Xi(3,:) + (rep_1.*rep_69 + rep_10.*rep_66 + rep_10.*rep_70 + rep_37.*rep_64 - rep_37.*rep_65).*Xi(2,:) + (rep_1.*rep_5.*rep_51.*U(8) - rep_1.*rep_66 - rep_1.*rep_70 + rep_10.*rep_69 - rep_32.*rep_64).*Xi(1,:);
	rep_72 = rep_11.*rep_45 + rep_57;
	rep_73 = -rep_1.*rep_42 + rep_67;
	rep_74 = -rep_10.*rep_42 + rep_61;
	rep_75 = rep_16.*rep_74;
	rep_76 = 2*y_h.*rep_41.*rep_8.*U(6) + rep_11.*rep_41.*rep_8.*U(5) - rep_11.*rep_60 - rep_40.*U(5) - rep_45.*rep_56;
	rep_77 = rep_10.*rep_55 + rep_10.*rep_58 + rep_39.*rep_62 + rep_50.*U(5);
	rep_78 = rep_16.*rep_72;
	rep_79 = rep_5.*rep_74;
	rep_80 = rep_5.*rep_76;
	rep_81 = rep_1.*rep_55 + rep_1.*rep_58 + rep_39.*rep_68 + rep_47.*U(5);
	rep_82 = y_h.*(-rep_22.*rep_39 - rep_53.*rep_6 - rep_54) + (-rep_16.*rep_76 + rep_5.*rep_72.*U(8) - rep_5.*rep_77 - rep_75.*U(8)).*Xi(3,:) + (-rep_1.*rep_81 - rep_10.*rep_16.*rep_77 + rep_10.*rep_80 + rep_37.*rep_78 + rep_37.*rep_79).*Xi(2,:) + (rep_1.*rep_16.*rep_77 - rep_1.*rep_80 - rep_10.*rep_81 - rep_32.*rep_78 - rep_32.*rep_79).*Xi(1,:);
	%% create output vector
	out = [rep_38.*(rep_1.*rep_21 + rep_10.*rep_15 + rep_4.*rep_9) + rep_71.*(-rep_1.*rep_44 - rep_1.*rep_52 + rep_10.*rep_48) + rep_82.*(rep_1.*rep_16.*rep_74 - rep_1.*rep_5.*rep_72 - rep_10.*rep_73);...
		 rep_38.*(rep_1.*rep_15 - rep_10.*rep_21 - rep_18.*rep_9) + rep_71.*(rep_1.*rep_48 + rep_10.*rep_44 + rep_10.*rep_52) + rep_82.*(-rep_1.*rep_73 + rep_10.*rep_5.*rep_72 - rep_10.*rep_75);...
		 rep_38.*(rep_16.*rep_3.*rep_8 - rep_31) + rep_71.*(-rep_64 + rep_65) + rep_82.*(-rep_78 - rep_79)];
end