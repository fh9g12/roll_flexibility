function out = get_fwt_V_b_body(p,U,Xi)
	%GET_FWT_V_B_BODY Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = sin(rep_2);
	rep_4 = 2*y_h;
	rep_5 = 3*rep_1;
	rep_6 = 4*y_h.^3;
	rep_7 = rep_4.*U(2) + rep_5.*U(3) + rep_6.*U(4);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(7));
	rep_10 = rep_9.*U(14);
	rep_11 = cos(U(7));
	rep_12 = y_h.*U(12) + rep_1.*U(13);
	rep_13 = cos(rep_2);
	rep_14 = sin(rep_7);
	rep_15 = rep_4.*U(9) + rep_5.*U(10) + rep_6.*U(11);
	rep_16 = rep_14.*rep_15;
	rep_17 = sin(Lambda);
	rep_18 = rep_13.*rep_17;
	rep_19 = cos(Lambda);
	rep_20 = rep_19.*rep_3;
	rep_21 = rep_14.*rep_20;
	rep_22 = rep_18 - rep_21;
	rep_23 = rep_11.*U(14);
	rep_24 = rep_17.*rep_3;
	rep_25 = rep_12.*rep_24;
	rep_26 = rep_13.*rep_19;
	rep_27 = rep_14.*rep_26;
	rep_28 = rep_15.*rep_8;
	rep_29 = -rep_12.*rep_27 - rep_20.*rep_28 - rep_25;
	rep_30 = rep_23.*rep_8;
	rep_31 = rep_12.*rep_18;
	rep_32 = rep_8.*rep_9;
	rep_33 = rep_10.*rep_22;
	rep_34 = -rep_12.*rep_20 + rep_14.*rep_31 + rep_24.*rep_28;
	rep_35 = rep_11.*rep_29;
	rep_36 = rep_12.*rep_26;
	rep_37 = sin(U(1));
	rep_38 = cos(U(1));
	rep_39 = rep_38.*U(8);
	rep_40 = y_h.*(y_h.*U(10) + rep_1.*U(11) + U(9));
	rep_41 = rep_37.*U(8);
	rep_42 = y_h.*(y_h.*U(3) + rep_1.*U(4) + U(2));
	rep_43 = rep_14.*rep_37;
	rep_44 = rep_38.*rep_8;
	rep_45 = -rep_13.*rep_44 + rep_43;
	rep_46 = rep_37.*rep_8;
	rep_47 = rep_24 + rep_27;
	rep_48 = rep_19.*rep_46 + rep_38.*rep_47;
	rep_49 = rep_12.*rep_3;
	rep_50 = rep_14.*rep_38;
	rep_51 = rep_15.*rep_50;
	rep_52 = rep_13.*rep_41.*rep_8 + rep_13.*rep_51 + rep_14.*rep_39 + rep_15.*rep_46 + rep_44.*rep_49;
	rep_53 = rep_15.*rep_43;
	rep_54 = rep_37.*rep_47;
	rep_55 = -rep_12.*rep_21 + rep_26.*rep_28 + rep_31;
	rep_56 = rep_19.*rep_38.*rep_8.*U(8) - rep_19.*rep_53 + rep_38.*rep_55 - rep_54.*U(8);
	rep_57 = rep_23.*rep_45;
	rep_58 = rep_52.*rep_9;
	rep_59 = rep_14.*rep_18 - rep_20;
	rep_60 = rep_13.*rep_15.*rep_17.*rep_8 - rep_14.*rep_25 - rep_36;
	rep_61 = rep_17.*rep_38.*rep_8.*U(8) - rep_17.*rep_53 + rep_38.*rep_60 - rep_41.*rep_59;
	rep_62 = rep_11.*rep_56;
	rep_63 = y_h.*(rep_38.*rep_40 + rep_39 - rep_41.*rep_42) + (rep_10.*rep_45 - rep_11.*rep_52 + rep_23.*rep_48 + rep_56.*rep_9).*Xi(3,:) + (-rep_10.*rep_19.*rep_48 + rep_17.*rep_61 + rep_19.*rep_57 + rep_19.*rep_58 + rep_19.*rep_62).*Xi(2,:) + (rep_17.*rep_48.*rep_9.*U(14) - rep_17.*rep_57 - rep_17.*rep_58 - rep_17.*rep_62 + rep_19.*rep_61).*Xi(1,:);
	rep_64 = rep_13.*rep_46 + rep_50;
	rep_65 = -rep_19.*rep_44 + rep_54;
	rep_66 = rep_13.*rep_38.*rep_8.*U(8) - rep_13.*rep_53 + rep_15.*rep_38.*rep_8 - rep_43.*U(8) - rep_46.*rep_49;
	rep_67 = rep_41.*rep_8;
	rep_68 = rep_19.*rep_51 + rep_19.*rep_67 + rep_37.*rep_55 + rep_39.*rep_47;
	rep_69 = rep_23.*rep_64;
	rep_70 = rep_10.*rep_65;
	rep_71 = rep_66.*rep_9;
	rep_72 = rep_17.*rep_51 + rep_17.*rep_67 + rep_37.*rep_60 + rep_39.*rep_59;
	rep_73 = -y_h.*(rep_37.*rep_40 + rep_39.*rep_42 + rep_41) + (-rep_11.*rep_66 - rep_23.*rep_65 + rep_64.*rep_9.*U(14) - rep_68.*rep_9).*Xi(3,:) + (rep_11.*rep_17.*rep_68 - rep_17.*rep_69 - rep_17.*rep_70 - rep_17.*rep_71 - rep_19.*rep_72).*Xi(1,:) + (-rep_11.*rep_19.*rep_68 - rep_17.*rep_72 + rep_19.*rep_69 + rep_19.*rep_70 + rep_19.*rep_71).*Xi(2,:);
	%% create output vector
	out = [(-rep_10.*rep_3.*rep_8 + rep_11.*rep_12.*rep_13.*rep_8 - rep_11.*rep_16.*rep_3 - rep_22.*rep_23 - rep_29.*rep_9).*Xi(3,:) + (rep_15.*rep_21.*rep_9 + rep_17.*rep_34 + rep_19.*rep_33 - rep_19.*rep_35 - rep_20.*rep_30 - rep_32.*rep_36).*Xi(2,:) + (-rep_16.*rep_24.*rep_9 - rep_17.*rep_33 + rep_17.*rep_35 + rep_19.*rep_34 + rep_24.*rep_30 + rep_31.*rep_32).*Xi(1,:);...
		 rep_37.*rep_63 + rep_38.*rep_73;...
		 -rep_37.*rep_73 + rep_38.*rep_63];
end