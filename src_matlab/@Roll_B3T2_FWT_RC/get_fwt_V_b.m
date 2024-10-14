function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:45 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(5) + rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = rep_1.*rep_4;
	rep_6 = sin(U(7));
	rep_7 = 2*y_h;
	rep_8 = 3*rep_2;
	rep_9 = 4*y_h.^3;
	rep_10 = rep_7.*U(2) + rep_8.*U(3) + rep_9.*U(4);
	rep_11 = cos(rep_10);
	rep_12 = rep_11.*rep_6;
	rep_13 = cos(Lambda);
	rep_14 = cos(rep_3);
	rep_15 = rep_13.*rep_14;
	rep_16 = sin(rep_10);
	rep_17 = rep_16.*rep_5;
	rep_18 = rep_15 + rep_17;
	rep_19 = cos(U(7));
	rep_20 = rep_1.*rep_14;
	rep_21 = rep_13.*rep_4;
	rep_22 = rep_16.*rep_21;
	rep_23 = rep_20 - rep_22;
	rep_24 = rep_19.*rep_23;
	rep_25 = y_h.*U(12) + rep_2.*U(13);
	rep_26 = rep_7.*U(9) + rep_8.*U(10) + rep_9.*U(11);
	rep_27 = rep_15.*rep_16;
	rep_28 = rep_11.*rep_26;
	rep_29 = -rep_21.*rep_28 - rep_25.*rep_27 - rep_25.*rep_5;
	rep_30 = rep_11.*rep_19.*U(14);
	rep_31 = rep_20.*rep_25;
	rep_32 = rep_26.*rep_6;
	rep_33 = rep_23.*rep_6;
	rep_34 = rep_1.*U(14);
	rep_35 = rep_16.*rep_20;
	rep_36 = -rep_21.*rep_25 + rep_25.*rep_35 + rep_28.*rep_5;
	rep_37 = rep_19.*rep_29;
	rep_38 = rep_15.*rep_25;
	rep_39 = rep_13.*U(14);
	rep_40 = (rep_11.*rep_14.*rep_19.*rep_25 - rep_12.*rep_4.*U(14) - rep_16.*rep_19.*rep_26.*rep_4 - rep_24.*U(14) - rep_29.*rep_6).*Xi(3,:) + (rep_1.*rep_36 - rep_12.*rep_38 - rep_13.*rep_37 - rep_21.*rep_30 + rep_22.*rep_32 + rep_33.*rep_39).*Xi(2,:) + (rep_1.*rep_37 + rep_12.*rep_31 + rep_13.*rep_36 - rep_17.*rep_32 + rep_30.*rep_5 - rep_33.*rep_34).*Xi(1,:);
	rep_41 = sin(U(1));
	rep_42 = rep_16.*rep_41;
	rep_43 = cos(U(1));
	rep_44 = rep_11.*rep_43;
	rep_45 = -rep_14.*rep_44 + rep_42;
	rep_46 = rep_45.*rep_6;
	rep_47 = rep_11.*rep_41;
	rep_48 = -rep_21 + rep_35;
	rep_49 = rep_43.*rep_48;
	rep_50 = rep_1.*rep_47 + rep_49;
	rep_51 = rep_27 + rep_5;
	rep_52 = rep_43.*rep_51;
	rep_53 = rep_13.*rep_47 + rep_52;
	rep_54 = rep_19.*rep_53;
	rep_55 = rep_43.*U(8);
	rep_56 = y_h.*(y_h.*U(10) + rep_2.*U(11) + U(9));
	rep_57 = rep_41.*U(8);
	rep_58 = y_h.*(y_h.*U(3) + rep_2.*U(4) + U(2));
	rep_59 = rep_11.*rep_57;
	rep_60 = rep_25.*rep_4;
	rep_61 = rep_16.*rep_43;
	rep_62 = rep_26.*rep_61;
	rep_63 = rep_14.*rep_59 + rep_14.*rep_62 + rep_16.*rep_55 + rep_26.*rep_47 + rep_44.*rep_60;
	rep_64 = rep_26.*rep_42;
	rep_65 = rep_41.*rep_51;
	rep_66 = rep_15.*rep_28 - rep_22.*rep_25 + rep_31;
	rep_67 = rep_11.*rep_13.*rep_43.*U(8) - rep_13.*rep_64 + rep_43.*rep_66 - rep_65.*U(8);
	rep_68 = rep_19.*rep_45;
	rep_69 = rep_53.*rep_6;
	rep_70 = rep_6.*rep_63;
	rep_71 = rep_41.*rep_48;
	rep_72 = rep_1.*rep_11.*rep_14.*rep_26 - rep_17.*rep_25 - rep_38;
	rep_73 = rep_1.*rep_11.*rep_43.*U(8) - rep_1.*rep_64 + rep_43.*rep_72 - rep_71.*U(8);
	rep_74 = rep_19.*rep_67;
	rep_75 = y_h.*(rep_43.*rep_56 + rep_55 - rep_57.*rep_58) + (-rep_19.*rep_63 + rep_46.*U(14) + rep_54.*U(14) + rep_6.*rep_67).*Xi(3,:) + (rep_1.*rep_73 + rep_13.*rep_70 + rep_13.*rep_74 + rep_39.*rep_68 - rep_39.*rep_69).*Xi(2,:) + (rep_1.*rep_53.*rep_6.*U(14) - rep_1.*rep_70 - rep_1.*rep_74 + rep_13.*rep_73 - rep_34.*rep_68).*Xi(1,:);
	rep_76 = rep_14.*rep_47 + rep_61;
	rep_77 = -rep_1.*rep_44 + rep_71;
	rep_78 = -rep_13.*rep_44 + rep_65;
	rep_79 = rep_19.*rep_78;
	rep_80 = rep_11.*rep_14.*rep_43.*U(8) + rep_11.*rep_26.*rep_43 - rep_14.*rep_64 - rep_42.*U(8) - rep_47.*rep_60;
	rep_81 = rep_13.*rep_59 + rep_13.*rep_62 + rep_41.*rep_66 + rep_52.*U(8);
	rep_82 = rep_19.*rep_76;
	rep_83 = rep_6.*rep_78;
	rep_84 = rep_6.*rep_80;
	rep_85 = rep_1.*rep_59 + rep_1.*rep_62 + rep_41.*rep_72 + rep_49.*U(8);
	rep_86 = -y_h.*(rep_41.*rep_56 + rep_55.*rep_58 + rep_57) + (-rep_19.*rep_80 + rep_6.*rep_76.*U(14) - rep_6.*rep_81 - rep_79.*U(14)).*Xi(3,:) + (-rep_1.*rep_85 - rep_13.*rep_19.*rep_81 + rep_13.*rep_84 + rep_39.*rep_82 + rep_39.*rep_83).*Xi(2,:) + (rep_1.*rep_19.*rep_81 - rep_1.*rep_84 - rep_13.*rep_85 - rep_34.*rep_82 - rep_34.*rep_83).*Xi(1,:);
	%% create output vector
	out = [rep_40.*(rep_1.*rep_24 + rep_12.*rep_5 + rep_13.*rep_18) + rep_75.*(-rep_1.*rep_46 - rep_1.*rep_54 + rep_13.*rep_50) + rep_86.*(rep_1.*rep_19.*rep_78 - rep_1.*rep_6.*rep_76 - rep_13.*rep_77);...
		 rep_40.*(rep_1.*rep_18 - rep_12.*rep_21 - rep_13.*rep_24) + rep_75.*(rep_1.*rep_50 + rep_13.*rep_46 + rep_13.*rep_54) + rep_86.*(-rep_1.*rep_77 + rep_13.*rep_6.*rep_76 - rep_13.*rep_79);...
		 rep_40.*(rep_11.*rep_19.*rep_4 - rep_33) + rep_75.*(-rep_68 + rep_69) + rep_86.*(-rep_82 - rep_83)];
end