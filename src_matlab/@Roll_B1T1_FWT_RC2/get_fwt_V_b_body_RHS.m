function out = get_fwt_V_b_body_RHS(p,U,Xi)
	%GET_FWT_V_B_BODY_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:54 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = b_i.^(-2);
	rep_2 = y_h.*rep_1;
	rep_3 = rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = 2*rep_2;
	rep_6 = rep_5.*U(5);
	rep_7 = cos(rep_6);
	rep_8 = sin(U(7));
	rep_9 = rep_8.*U(14);
	rep_10 = cos(U(7));
	rep_11 = sin(rep_6);
	rep_12 = rep_5.*U(12);
	rep_13 = rep_11.*rep_12;
	rep_14 = cos(rep_3);
	rep_15 = sin(Lambda);
	rep_16 = rep_14.*rep_15;
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_4;
	rep_19 = rep_11.*rep_18;
	rep_20 = rep_16 - rep_19;
	rep_21 = rep_10.*U(14);
	rep_22 = rep_15.*rep_4;
	rep_23 = rep_2.*U(13);
	rep_24 = rep_22.*rep_23;
	rep_25 = rep_14.*rep_17;
	rep_26 = rep_11.*rep_25;
	rep_27 = rep_12.*rep_7;
	rep_28 = -rep_18.*rep_27 - rep_23.*rep_26 - rep_24;
	rep_29 = rep_21.*rep_7;
	rep_30 = rep_16.*rep_23;
	rep_31 = rep_7.*rep_8;
	rep_32 = rep_20.*rep_9;
	rep_33 = rep_11.*rep_16;
	rep_34 = -rep_18.*rep_23 + rep_22.*rep_27 + rep_23.*rep_33;
	rep_35 = rep_10.*rep_28;
	rep_36 = rep_23.*rep_25;
	rep_37 = sin(U(1));
	rep_38 = cos(U(1));
	rep_39 = y_h.*U(8);
	rep_40 = y_h.^2.*rep_1;
	rep_41 = rep_40.*U(9);
	rep_42 = rep_40.*U(2).*U(8);
	rep_43 = rep_11.*rep_37;
	rep_44 = rep_38.*rep_7;
	rep_45 = -rep_14.*rep_44 + rep_43;
	rep_46 = rep_37.*rep_7;
	rep_47 = rep_17.*rep_46;
	rep_48 = rep_22 + rep_26;
	rep_49 = rep_38.*rep_48;
	rep_50 = rep_47 + rep_49;
	rep_51 = rep_11.*rep_38;
	rep_52 = rep_14.*rep_46;
	rep_53 = rep_23.*rep_4;
	rep_54 = rep_12.*rep_51;
	rep_55 = rep_12.*rep_46 + rep_14.*rep_54 + rep_44.*rep_53 + rep_51.*U(8) + rep_52.*U(8);
	rep_56 = rep_12.*rep_43;
	rep_57 = rep_37.*rep_48;
	rep_58 = -rep_19.*rep_23 + rep_25.*rep_27 + rep_30;
	rep_59 = rep_17.*rep_38.*rep_7.*U(8) - rep_17.*rep_56 + rep_38.*rep_58 - rep_57.*U(8);
	rep_60 = rep_21.*rep_45;
	rep_61 = rep_55.*rep_8;
	rep_62 = U(8).*(-rep_18 + rep_33);
	rep_63 = 2*y_h.*rep_1.*rep_14.*rep_15.*rep_7.*U(12) - rep_11.*rep_24 - rep_36;
	rep_64 = rep_15.*rep_38.*rep_7.*U(8) - rep_15.*rep_56 - rep_37.*rep_62 + rep_38.*rep_63;
	rep_65 = rep_10.*rep_59;
	rep_66 = -rep_37.*rep_42 + rep_38.*rep_39 + rep_38.*rep_41 + (-rep_10.*rep_55 + rep_21.*rep_50 + rep_45.*rep_9 + rep_59.*rep_8).*Xi(3,:) + (rep_15.*rep_64 - rep_17.*rep_50.*rep_9 + rep_17.*rep_60 + rep_17.*rep_61 + rep_17.*rep_65).*Xi(2,:) + (rep_15.*rep_50.*rep_8.*U(14) - rep_15.*rep_60 - rep_15.*rep_61 - rep_15.*rep_65 + rep_17.*rep_64).*Xi(1,:);
	rep_67 = rep_51 + rep_52;
	rep_68 = -rep_17.*rep_44 + rep_57;
	rep_69 = 2*y_h.*rep_1.*rep_38.*rep_7.*U(12) + rep_14.*rep_38.*rep_7.*U(8) - rep_14.*rep_56 - rep_43.*U(8) - rep_46.*rep_53;
	rep_70 = rep_17.*rep_54 + rep_37.*rep_58 + rep_47.*U(8) + rep_49.*U(8);
	rep_71 = rep_21.*rep_67;
	rep_72 = rep_68.*rep_9;
	rep_73 = rep_69.*rep_8;
	rep_74 = rep_15.*rep_46.*U(8) + rep_15.*rep_54 + rep_37.*rep_63 + rep_38.*rep_62;
	rep_75 = -rep_37.*rep_39 - rep_37.*rep_41 - rep_38.*rep_42 + (-rep_10.*rep_69 - rep_21.*rep_68 + rep_67.*rep_8.*U(14) - rep_70.*rep_8).*Xi(3,:) + (rep_10.*rep_15.*rep_70 - rep_15.*rep_71 - rep_15.*rep_72 - rep_15.*rep_73 - rep_17.*rep_74).*Xi(1,:) + (-rep_10.*rep_17.*rep_70 - rep_15.*rep_74 + rep_17.*rep_71 + rep_17.*rep_72 + rep_17.*rep_73).*Xi(2,:);
	%% create output vector
	out = [(y_h.*rep_1.*rep_10.*rep_14.*rep_7.*U(13) - rep_10.*rep_13.*rep_4 - rep_20.*rep_21 - rep_28.*rep_8 - rep_4.*rep_7.*rep_9).*Xi(3,:) + (rep_12.*rep_19.*rep_8 + rep_15.*rep_34 + rep_17.*rep_32 - rep_17.*rep_35 - rep_18.*rep_29 - rep_31.*rep_36).*Xi(2,:) + (-rep_13.*rep_22.*rep_8 - rep_15.*rep_32 + rep_15.*rep_35 + rep_17.*rep_34 + rep_22.*rep_29 + rep_30.*rep_31).*Xi(1,:);...
		 rep_37.*rep_66 + rep_38.*rep_75;...
		 -rep_37.*rep_75 + rep_38.*rep_66];
end