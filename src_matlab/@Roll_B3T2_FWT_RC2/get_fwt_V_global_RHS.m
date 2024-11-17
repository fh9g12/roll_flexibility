function out = get_fwt_V_global_RHS(p,U,Xi)
	%GET_FWT_V_GLOBAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
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
	rep_12 = rep_10.*U(10) + rep_11.*U(9) + rep_7.*U(8);
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
	rep_27 = rep_10.*U(23) + rep_11.*U(22) + rep_7.*U(21);
	rep_28 = rep_21.*rep_27;
	rep_29 = rep_19.*rep_6;
	rep_30 = rep_17.*rep_29;
	rep_31 = rep_18.*rep_22;
	rep_32 = rep_21.*rep_31;
	rep_33 = rep_13.*rep_27;
	rep_34 = -rep_17.*rep_32 - rep_23.*rep_33 - rep_30;
	rep_35 = rep_13.*rep_26;
	rep_36 = rep_17.*rep_20;
	rep_37 = rep_13.*rep_14;
	rep_38 = rep_15.*rep_25;
	rep_39 = -rep_17.*rep_23 + rep_21.*rep_36 + rep_29.*rep_33;
	rep_40 = rep_16.*rep_34;
	rep_41 = rep_17.*rep_31;
	rep_42 = sin(U(1));
	rep_43 = rep_8.*U(14);
	rep_44 = b_i.*y_h;
	rep_45 = y_h.*(rep_1.*U(15) + rep_3.*U(17) + rep_44.*U(16));
	rep_46 = cos(U(1));
	rep_47 = y_h.*U(14).*(rep_1.*U(2) + rep_3.*U(4) + rep_44.*U(3));
	rep_48 = y_h.*rep_9;
	rep_49 = rep_21.*rep_46;
	rep_50 = rep_13.*rep_42;
	rep_51 = rep_18.*rep_50;
	rep_52 = rep_49 + rep_51;
	rep_53 = rep_13.*rep_46;
	rep_54 = rep_29 + rep_32;
	rep_55 = rep_42.*rep_54;
	rep_56 = -rep_22.*rep_53 + rep_55;
	rep_57 = rep_21.*rep_42;
	rep_58 = rep_17.*rep_6;
	rep_59 = rep_27.*rep_57;
	rep_60 = rep_13.*rep_18.*rep_46.*U(14) + rep_13.*rep_27.*rep_46 - rep_18.*rep_59 - rep_50.*rep_58 - rep_57.*U(14);
	rep_61 = rep_22.*rep_50;
	rep_62 = rep_27.*rep_49;
	rep_63 = rep_46.*rep_54;
	rep_64 = -rep_17.*rep_24 + rep_31.*rep_33 + rep_36;
	rep_65 = rep_22.*rep_62 + rep_42.*rep_64 + rep_61.*U(14) + rep_63.*U(14);
	rep_66 = rep_26.*rep_52;
	rep_67 = rep_15.*rep_56;
	rep_68 = rep_14.*rep_60;
	rep_69 = U(14).*(rep_20.*rep_21 - rep_23);
	rep_70 = rep_13.*rep_18.*rep_19.*rep_27 - rep_21.*rep_30 - rep_41;
	rep_71 = rep_19.*rep_50.*U(14) + rep_19.*rep_62 + rep_42.*rep_70 + rep_46.*rep_69;
	rep_72 = -rep_18.*rep_53 + rep_57;
	rep_73 = rep_61 + rep_63;
	rep_74 = rep_18.*rep_62 + rep_27.*rep_50 + rep_49.*U(14) + rep_51.*U(14) + rep_53.*rep_58;
	rep_75 = rep_13.*rep_22.*rep_46.*U(14) - rep_22.*rep_59 + rep_46.*rep_64 - rep_55.*U(14);
	rep_76 = rep_26.*rep_72;
	rep_77 = rep_14.*rep_74;
	rep_78 = rep_13.*rep_19.*rep_46.*U(14) - rep_19.*rep_59 - rep_42.*rep_69 + rep_46.*rep_70;
	rep_79 = rep_16.*rep_75;
	%% create output vector
	out = [(-rep_13.*rep_15.*rep_6 + rep_13.*rep_16.*rep_17.*rep_18 - rep_14.*rep_34 - rep_16.*rep_28.*rep_6 - rep_25.*rep_26).*Xi(3,:) + (rep_14.*rep_24.*rep_27 + rep_19.*rep_39 + rep_22.*rep_38 - rep_22.*rep_40 - rep_23.*rep_35 - rep_37.*rep_41).*Xi(2,:) + (-rep_14.*rep_28.*rep_29 - rep_19.*rep_38 + rep_19.*rep_40 + rep_22.*rep_39 + rep_29.*rep_35 + rep_36.*rep_37).*Xi(1,:);...
		 rep_48.*(-rep_42.*rep_43 - rep_42.*rep_45 - rep_46.*rep_47) + (rep_14.*rep_52.*U(26) - rep_14.*rep_65 - rep_16.*rep_60 - rep_26.*rep_56).*Xi(3,:) + (rep_16.*rep_19.*rep_65 - rep_19.*rep_66 - rep_19.*rep_67 - rep_19.*rep_68 - rep_22.*rep_71).*Xi(1,:) + (-rep_16.*rep_22.*rep_65 - rep_19.*rep_71 + rep_22.*rep_66 + rep_22.*rep_67 + rep_22.*rep_68).*Xi(2,:);...
		 rep_48.*(-rep_42.*rep_47 + rep_43.*rep_46 + rep_45.*rep_46) + (rep_14.*rep_75 + rep_15.*rep_72 - rep_16.*rep_74 + rep_26.*rep_73).*Xi(3,:) + (-rep_15.*rep_22.*rep_73 + rep_19.*rep_78 + rep_22.*rep_76 + rep_22.*rep_77 + rep_22.*rep_79).*Xi(2,:) + (rep_14.*rep_19.*rep_73.*U(26) - rep_19.*rep_76 - rep_19.*rep_77 - rep_19.*rep_79 + rep_22.*rep_78).*Xi(1,:)];
end