function out = get_fwt_V_b_body_LHS(p,U,Xi)
	%GET_FWT_V_B_BODY_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
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
	rep_10 = cos(rep_3);
	rep_11 = cos(U(7));
	rep_12 = rep_2.*U(13);
	rep_13 = sin(rep_6);
	rep_14 = rep_5.*U(12);
	rep_15 = sin(Lambda);
	rep_16 = rep_10.*rep_15;
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_4;
	rep_19 = rep_13.*rep_18;
	rep_20 = rep_16 - rep_19;
	rep_21 = rep_11.*U(14);
	rep_22 = rep_15.*rep_4;
	rep_23 = rep_12.*rep_22;
	rep_24 = rep_10.*rep_17;
	rep_25 = rep_13.*rep_24;
	rep_26 = rep_14.*rep_7;
	rep_27 = -rep_12.*rep_25 - rep_18.*rep_26 - rep_23;
	rep_28 = rep_21.*rep_7;
	rep_29 = rep_12.*rep_24;
	rep_30 = rep_7.*rep_8;
	rep_31 = rep_20.*rep_9;
	rep_32 = rep_13.*rep_16;
	rep_33 = y_h.*rep_1.*rep_17.*rep_4.*U(13) - rep_12.*rep_32 - rep_22.*rep_26;
	rep_34 = rep_12.*rep_16;
	rep_35 = cos(U(1));
	rep_36 = sin(U(1));
	rep_37 = y_h.*U(8);
	rep_38 = y_h.^2.*rep_1;
	rep_39 = rep_38.*U(12);
	rep_40 = rep_38.*U(5).*U(8);
	rep_41 = rep_13.*rep_35;
	rep_42 = rep_36.*rep_7;
	rep_43 = rep_10.*rep_42;
	rep_44 = -rep_41 + rep_43;
	rep_45 = rep_35.*rep_7;
	rep_46 = rep_17.*rep_45;
	rep_47 = rep_22 + rep_25;
	rep_48 = rep_36.*rep_47;
	rep_49 = rep_46 + rep_48;
	rep_50 = rep_12.*rep_4;
	rep_51 = rep_13.*rep_36;
	rep_52 = rep_14.*rep_51;
	rep_53 = rep_10.*rep_35.*rep_7.*U(8) - rep_10.*rep_52 + rep_13.*rep_36.*U(8) - rep_14.*rep_45 - rep_42.*rep_50;
	rep_54 = rep_17.*rep_42;
	rep_55 = rep_14.*rep_41;
	rep_56 = rep_35.*rep_47;
	rep_57 = -rep_12.*rep_19 + rep_24.*rep_26 + rep_34;
	rep_58 = -rep_17.*rep_55 + rep_36.*rep_57 - rep_54.*U(8) + rep_56.*U(8);
	rep_59 = rep_21.*rep_44;
	rep_60 = rep_49.*rep_9;
	rep_61 = rep_53.*rep_8;
	rep_62 = U(8).*(rep_17.*rep_4 - rep_32);
	rep_63 = rep_13.*rep_23 - rep_16.*rep_26 + rep_29;
	rep_64 = rep_15.*rep_42.*U(8) + rep_15.*rep_55 + rep_35.*rep_62 + rep_36.*rep_63;
	rep_65 = rep_11.*rep_58;
	rep_66 = -rep_35.*rep_40 + rep_36.*rep_37 - rep_36.*rep_39 + (-rep_11.*rep_53 + rep_21.*rep_49 + rep_44.*rep_9 + rep_58.*rep_8).*Xi(3,:) + (rep_15.*rep_59 - rep_15.*rep_60 + rep_15.*rep_61 + rep_15.*rep_65 + rep_17.*rep_64).*Xi(1,:) + (-rep_15.*rep_64 + rep_17.*rep_59 - rep_17.*rep_60 + rep_17.*rep_61 + rep_17.*rep_65).*Xi(2,:);
	rep_67 = -rep_10.*rep_45 - rep_51;
	rep_68 = -rep_54 + rep_56;
	rep_69 = rep_10.*rep_55 - rep_14.*rep_42 - rep_41.*U(8) + rep_43.*U(8) + rep_45.*rep_50;
	rep_70 = 2*y_h.*rep_1.*rep_13.*rep_17.*rep_36.*U(12) + rep_35.*rep_57 - rep_46.*U(8) - rep_48.*U(8);
	rep_71 = rep_21.*rep_67;
	rep_72 = rep_68.*rep_9;
	rep_73 = rep_69.*rep_8;
	rep_74 = rep_15.*rep_35.*rep_7.*U(8) - rep_15.*rep_52 + rep_35.*rep_63 - rep_36.*rep_62;
	rep_75 = rep_11.*rep_70;
	rep_76 = -rep_35.*rep_37 + rep_35.*rep_39 - rep_36.*rep_40 + (-rep_11.*rep_69 - rep_21.*rep_68 + rep_67.*rep_8.*U(14) - rep_70.*rep_8).*Xi(3,:) + (rep_15.*rep_71 + rep_15.*rep_72 + rep_15.*rep_73 - rep_15.*rep_75 - rep_17.*rep_74).*Xi(1,:) + (rep_15.*rep_74 + rep_17.*rep_71 + rep_17.*rep_72 + rep_17.*rep_73 - rep_17.*rep_75).*Xi(2,:);
	%% create output vector
	out = [(rep_10.*rep_11.*rep_12.*rep_7 - rep_11.*rep_13.*rep_14.*rep_4 + rep_20.*rep_21 + rep_27.*rep_8 - rep_4.*rep_7.*rep_9).*Xi(3,:) + (2*y_h.*rep_1.*rep_13.*rep_15.*rep_4.*rep_8.*U(12) + rep_11.*rep_15.*rep_27 - rep_15.*rep_31 - rep_17.*rep_33 - rep_22.*rep_28 - rep_30.*rep_34).*Xi(1,:) + (2*y_h.*rep_1.*rep_13.*rep_17.*rep_4.*rep_8.*U(12) + rep_11.*rep_17.*rep_27 + rep_15.*rep_33 - rep_17.*rep_31 - rep_18.*rep_28 - rep_29.*rep_30).*Xi(2,:);...
		 rep_35.*rep_66 + rep_36.*rep_76;...
		 rep_35.*rep_76 - rep_36.*rep_66];
end