function out = get_fwt_V_global_LHS(p,U,Xi)
	%GET_FWT_V_GLOBAL_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = b_i.^2;
	rep_2 = y_h./rep_1;
	rep_3 = y_h.^2;
	rep_4 = rep_3./b_i.^3;
	rep_5 = rep_2.*U(11) + rep_4.*U(12);
	rep_6 = sin(rep_5);
	rep_7 = 2*rep_2;
	rep_8 = b_i.^4;
	rep_9 = 1./rep_8;
	rep_10 = 4*y_h.^3.*rep_9;
	rep_11 = 3*rep_4;
	rep_12 = rep_10.*U(10) - rep_11.*U(9) + rep_7.*U(8);
	rep_13 = cos(rep_12);
	rep_14 = sin(U(13));
	rep_15 = rep_14.*U(26);
	rep_16 = cos(U(13));
	rep_17 = rep_2.*U(24) + rep_4.*U(25);
	rep_18 = cos(rep_5);
	rep_19 = sin(Lambda);
	rep_20 = rep_18.*rep_19;
	rep_21 = sin(rep_12);
	rep_22 = cos(Lambda);
	rep_23 = rep_22.*rep_6;
	rep_24 = rep_21.*rep_23;
	rep_25 = rep_20 - rep_24;
	rep_26 = rep_16.*U(26);
	rep_27 = rep_10.*U(23) - rep_11.*U(22) + rep_7.*U(21);
	rep_28 = rep_19.*rep_6;
	rep_29 = rep_17.*rep_28;
	rep_30 = rep_18.*rep_22;
	rep_31 = rep_21.*rep_30;
	rep_32 = rep_13.*rep_27;
	rep_33 = -rep_17.*rep_31 - rep_23.*rep_32 - rep_29;
	rep_34 = rep_13.*rep_26;
	rep_35 = rep_17.*rep_30;
	rep_36 = rep_13.*rep_14;
	rep_37 = rep_15.*rep_25;
	rep_38 = rep_17.*rep_20;
	rep_39 = rep_17.*rep_22.*rep_6 - rep_21.*rep_38 - rep_28.*rep_32;
	rep_40 = sin(U(1));
	rep_41 = rep_8.*U(14);
	rep_42 = b_i.*y_h;
	rep_43 = y_h.*(rep_1.*U(21) + rep_3.*U(23) - rep_42.*U(22));
	rep_44 = cos(U(1));
	rep_45 = y_h.*U(14).*(rep_1.*U(8) + rep_3.*U(10) - rep_42.*U(9));
	rep_46 = y_h.*rep_9;
	rep_47 = rep_21.*rep_44;
	rep_48 = rep_13.*rep_40;
	rep_49 = rep_18.*rep_48;
	rep_50 = -rep_47 + rep_49;
	rep_51 = rep_13.*rep_44;
	rep_52 = rep_22.*rep_51;
	rep_53 = rep_28 + rep_31;
	rep_54 = rep_40.*rep_53;
	rep_55 = rep_52 + rep_54;
	rep_56 = rep_17.*rep_6;
	rep_57 = rep_21.*rep_40;
	rep_58 = rep_27.*rep_57;
	rep_59 = rep_13.*rep_18.*rep_44.*U(14) - rep_18.*rep_58 + rep_21.*rep_40.*U(14) - rep_27.*rep_51 - rep_48.*rep_56;
	rep_60 = rep_22.*rep_48;
	rep_61 = rep_27.*rep_47;
	rep_62 = rep_44.*rep_53;
	rep_63 = -rep_17.*rep_24 + rep_30.*rep_32 + rep_38;
	rep_64 = -rep_22.*rep_61 + rep_40.*rep_63 - rep_60.*U(14) + rep_62.*U(14);
	rep_65 = rep_26.*rep_50;
	rep_66 = rep_15.*rep_55;
	rep_67 = rep_14.*rep_59;
	rep_68 = U(14).*(-rep_20.*rep_21 + rep_22.*rep_6);
	rep_69 = -rep_20.*rep_32 + rep_21.*rep_29 + rep_35;
	rep_70 = rep_19.*rep_48.*U(14) + rep_19.*rep_61 + rep_40.*rep_69 + rep_44.*rep_68;
	rep_71 = rep_16.*rep_64;
	rep_72 = -rep_18.*rep_51 - rep_57;
	rep_73 = -rep_60 + rep_62;
	rep_74 = rep_18.*rep_61 - rep_27.*rep_48 - rep_47.*U(14) + rep_49.*U(14) + rep_51.*rep_56;
	rep_75 = rep_21.*rep_22.*rep_27.*rep_40 + rep_44.*rep_63 - rep_52.*U(14) - rep_54.*U(14);
	rep_76 = rep_26.*rep_72;
	rep_77 = rep_15.*rep_73;
	rep_78 = rep_14.*rep_74;
	rep_79 = rep_13.*rep_19.*rep_44.*U(14) - rep_19.*rep_58 - rep_40.*rep_68 + rep_44.*rep_69;
	rep_80 = rep_16.*rep_75;
	%% create output vector
	out = [(-rep_13.*rep_15.*rep_6 + rep_13.*rep_16.*rep_17.*rep_18 + rep_14.*rep_33 - rep_16.*rep_21.*rep_27.*rep_6 + rep_25.*rep_26).*Xi(3,:) + (rep_14.*rep_19.*rep_21.*rep_27.*rep_6 + rep_16.*rep_19.*rep_33 - rep_19.*rep_37 - rep_22.*rep_39 - rep_28.*rep_34 - rep_36.*rep_38).*Xi(1,:) + (rep_14.*rep_21.*rep_22.*rep_27.*rep_6 + rep_16.*rep_22.*rep_33 + rep_19.*rep_39 - rep_22.*rep_37 - rep_23.*rep_34 - rep_35.*rep_36).*Xi(2,:);...
		 -rep_46.*(-rep_40.*rep_41 + rep_40.*rep_43 + rep_44.*rep_45) + (rep_14.*rep_64 + rep_15.*rep_50 - rep_16.*rep_59 + rep_26.*rep_55).*Xi(3,:) + (rep_19.*rep_65 - rep_19.*rep_66 + rep_19.*rep_67 + rep_19.*rep_71 + rep_22.*rep_70).*Xi(1,:) + (-rep_19.*rep_70 + rep_22.*rep_65 - rep_22.*rep_66 + rep_22.*rep_67 + rep_22.*rep_71).*Xi(2,:);...
		 -rep_46.*(rep_40.*rep_45 + rep_41.*rep_44 - rep_43.*rep_44) + (rep_14.*rep_72.*U(26) - rep_14.*rep_75 - rep_16.*rep_74 - rep_26.*rep_73).*Xi(3,:) + (rep_19.*rep_76 + rep_19.*rep_77 + rep_19.*rep_78 - rep_19.*rep_80 - rep_22.*rep_79).*Xi(1,:) + (rep_19.*rep_79 + rep_22.*rep_76 + rep_22.*rep_77 + rep_22.*rep_78 - rep_22.*rep_80).*Xi(2,:)];
end