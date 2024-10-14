function out = get_fwt_V_global(p,U,Xi)
	%GET_FWT_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = sin(rep_1);
	rep_3 = y_h.*U(2);
	rep_4 = 2*rep_3;
	rep_5 = cos(rep_4);
	rep_6 = sin(U(4));
	rep_7 = rep_6.*U(8);
	rep_8 = cos(U(4));
	rep_9 = sin(rep_4);
	rep_10 = y_h.*U(6);
	rep_11 = 2*rep_10;
	rep_12 = rep_11.*rep_9;
	rep_13 = cos(rep_1);
	rep_14 = sin(Lambda);
	rep_15 = rep_13.*rep_14;
	rep_16 = cos(Lambda);
	rep_17 = rep_16.*rep_2;
	rep_18 = rep_17.*rep_9;
	rep_19 = rep_15 - rep_18;
	rep_20 = rep_8.*U(8);
	rep_21 = rep_14.*rep_2;
	rep_22 = y_h.*U(7);
	rep_23 = rep_21.*rep_22;
	rep_24 = rep_13.*rep_16;
	rep_25 = rep_24.*rep_9;
	rep_26 = rep_11.*rep_5;
	rep_27 = -rep_17.*rep_26 - rep_22.*rep_25 - rep_23;
	rep_28 = rep_20.*rep_5;
	rep_29 = rep_15.*rep_22;
	rep_30 = rep_5.*rep_6;
	rep_31 = rep_19.*rep_7;
	rep_32 = rep_15.*rep_9;
	rep_33 = -rep_17.*rep_22 + rep_21.*rep_26 + rep_22.*rep_32;
	rep_34 = rep_27.*rep_8;
	rep_35 = rep_22.*rep_24;
	rep_36 = sin(U(1));
	rep_37 = rep_36.*U(5);
	rep_38 = rep_10.*rep_36;
	rep_39 = cos(U(1));
	rep_40 = rep_39.*U(5);
	rep_41 = rep_39.*rep_9;
	rep_42 = rep_36.*rep_5;
	rep_43 = rep_13.*rep_42 + rep_41;
	rep_44 = rep_39.*rep_5;
	rep_45 = rep_21 + rep_25;
	rep_46 = -rep_16.*rep_44 + rep_36.*rep_45;
	rep_47 = rep_2.*rep_22;
	rep_48 = rep_36.*rep_9;
	rep_49 = rep_11.*rep_48;
	rep_50 = 2*y_h.*rep_39.*rep_5.*U(6) + rep_13.*rep_39.*rep_5.*U(5) - rep_13.*rep_49 - rep_37.*rep_9 - rep_42.*rep_47;
	rep_51 = rep_37.*rep_5;
	rep_52 = rep_11.*rep_41;
	rep_53 = -rep_18.*rep_22 + rep_24.*rep_26 + rep_29;
	rep_54 = rep_16.*rep_51 + rep_16.*rep_52 + rep_36.*rep_53 + rep_40.*rep_45;
	rep_55 = rep_20.*rep_43;
	rep_56 = rep_46.*rep_7;
	rep_57 = rep_50.*rep_6;
	rep_58 = -rep_17 + rep_32;
	rep_59 = 2*y_h.*rep_13.*rep_14.*rep_5.*U(6) - rep_23.*rep_9 - rep_35;
	rep_60 = rep_14.*rep_51 + rep_14.*rep_52 + rep_36.*rep_59 + rep_40.*rep_58;
	rep_61 = -rep_13.*rep_44 + rep_48;
	rep_62 = rep_16.*rep_42 + rep_39.*rep_45;
	rep_63 = rep_13.*rep_51 + rep_13.*rep_52 + 2*rep_38.*rep_5 + rep_41.*U(5) + rep_44.*rep_47;
	rep_64 = rep_16.*rep_39.*rep_5.*U(5) - rep_16.*rep_49 - rep_37.*rep_45 + rep_39.*rep_53;
	rep_65 = rep_20.*rep_61;
	rep_66 = rep_6.*rep_63;
	rep_67 = rep_14.*rep_39.*rep_5.*U(5) - rep_14.*rep_49 - rep_37.*rep_58 + rep_39.*rep_59;
	rep_68 = rep_64.*rep_8;
	%% create output vector
	out = [(y_h.*rep_13.*rep_5.*rep_8.*U(7) - rep_12.*rep_2.*rep_8 - rep_19.*rep_20 - rep_2.*rep_5.*rep_7 - rep_27.*rep_6).*Xi(3,:) + (rep_11.*rep_18.*rep_6 + rep_14.*rep_33 + rep_16.*rep_31 - rep_16.*rep_34 - rep_17.*rep_28 - rep_30.*rep_35).*Xi(2,:) + (-rep_12.*rep_21.*rep_6 - rep_14.*rep_31 + rep_14.*rep_34 + rep_16.*rep_33 + rep_21.*rep_28 + rep_29.*rep_30).*Xi(1,:);...
		 y_h.*(-rep_3.*rep_40 - rep_37 - rep_38) + (-rep_20.*rep_46 + rep_43.*rep_6.*U(8) - rep_50.*rep_8 - rep_54.*rep_6).*Xi(3,:) + (-rep_14.*rep_60 - rep_16.*rep_54.*rep_8 + rep_16.*rep_55 + rep_16.*rep_56 + rep_16.*rep_57).*Xi(2,:) + (rep_14.*rep_54.*rep_8 - rep_14.*rep_55 - rep_14.*rep_56 - rep_14.*rep_57 - rep_16.*rep_60).*Xi(1,:);...
		 y_h.*(rep_10.*rep_39 - rep_3.*rep_37 + rep_40) + (rep_20.*rep_62 + rep_6.*rep_64 + rep_61.*rep_7 - rep_63.*rep_8).*Xi(3,:) + (rep_14.*rep_67 - rep_16.*rep_62.*rep_7 + rep_16.*rep_65 + rep_16.*rep_66 + rep_16.*rep_68).*Xi(2,:) + (rep_14.*rep_6.*rep_62.*U(8) - rep_14.*rep_65 - rep_14.*rep_66 - rep_14.*rep_68 + rep_16.*rep_67).*Xi(1,:)];
end