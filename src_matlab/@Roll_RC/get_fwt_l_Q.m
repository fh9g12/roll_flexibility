function out = get_fwt_l_Q(p,U,W,Xi)
	%GET_FWT_L_Q Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:43 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(3));
	rep_3 = rep_1.*rep_2;
	rep_4 = sin(U(3));
	rep_5 = cos(Lambda);
	rep_6 = cos(U(1));
	rep_7 = rep_5.*rep_6;
	rep_8 = rep_3 + rep_4.*rep_7;
	rep_9 = -rep_8;
	rep_10 = sin(Lambda);
	rep_11 = rep_10.^2;
	rep_12 = rep_1.*rep_4;
	rep_13 = rep_12 - rep_2.*rep_5.*rep_6;
	rep_14 = -rep_13 - rep_7;
	rep_15 = rep_11.*rep_6 - rep_13.*rep_5;
	rep_16 = -rep_11.*rep_6 + rep_13.*rep_5;
	rep_17 = -rep_16;
	rep_18 = rep_11.*rep_14.^2 + rep_15.*rep_17 + rep_9.^2;
	rep_19 = rep_10.*rep_4;
	rep_20 = rep_12.*rep_5 - rep_2.*rep_6;
	rep_21 = -rep_20;
	rep_22 = rep_5.^2;
	rep_23 = rep_11.*rep_2 + rep_22;
	rep_24 = rep_3.*rep_5 + rep_4.*rep_6;
	rep_25 = -rep_1.*rep_5 + rep_24;
	rep_26 = -rep_10.*rep_25;
	rep_27 = rep_1.*rep_11 + rep_24.*rep_5;
	rep_28 = -rep_27;
	rep_29 = rep_10.*(rep_2 - 1);
	rep_30 = rep_29.*rep_5;
	rep_31 = -rep_19.*rep_20 + rep_23.*rep_26 + rep_28.*rep_30;
	rep_32 = rep_10.*rep_25;
	rep_33 = X_h(1) - rep_19.*Xi(3,:) + rep_23.*Xi(1,:) + rep_30.*Xi(2,:);
	rep_34 = -rep_33;
	rep_35 = rep_10.*rep_14;
	rep_36 = -X_h(2).*rep_6 - X_h(3).*rep_1 + rep_35.*Xi(1,:) + rep_9.*Xi(3,:);
	rep_37 = rep_17.*Xi(2,:) + rep_36;
	rep_38 = rep_19.*rep_37 + rep_34.*rep_8;
	rep_39 = X_h(3).*rep_6;
	rep_40 = X_h(2).*rep_1;
	rep_41 = rep_21.*Xi(3,:) + rep_27.*Xi(2,:) + rep_32.*Xi(1,:) + rep_39 - rep_40;
	rep_42 = -rep_37;
	rep_43 = rep_20.*rep_42 + rep_41.*rep_8;
	rep_44 = rep_19.*rep_33 + rep_20.*rep_41 + rep_37.*rep_8;
	rep_45 = -rep_23;
	rep_46 = -rep_32.*rep_41 + rep_33.*rep_45 - rep_35.*rep_37;
	rep_47 = rep_16.*rep_37 + rep_28.*rep_41 - rep_30.*rep_33;
	rep_48 = rep_20.*rep_44 + rep_20.*Xi(3,:) + rep_26.*rep_46 + rep_26.*Xi(1,:) + rep_28.*rep_47 + rep_28.*Xi(2,:) - rep_39 + rep_40;
	rep_49 = rep_15.*rep_47 + rep_15.*Xi(2,:) + rep_35.*rep_46 + rep_36 + rep_44.*rep_9;
	rep_50 = -rep_34.*rep_35 + rep_37.*rep_45;
	rep_51 = -rep_32.*rep_42 - rep_35.*rep_41;
	rep_52 = rep_16.*rep_34 - rep_30.*rep_37;
	rep_53 = rep_16.*rep_41 + rep_28.*rep_42;
	rep_54 = rep_10.*rep_23.*rep_9 - rep_13.*rep_19 - rep_22.*rep_29.*rep_8;
	rep_55 = rep_10.*rep_2;
	rep_56 = rep_19.*rep_5;
	rep_57 = -rep_10.^3.*rep_25.*rep_4 - rep_21.*rep_55 - rep_27.*rep_56;
	rep_58 = -rep_24;
	rep_59 = rep_21.*rep_5;
	rep_60 = rep_11.*rep_14.*rep_21 + rep_17.*rep_59 + rep_58.*rep_9;
	rep_61 = -rep_41;
	rep_62 = rep_11.*rep_4;
	rep_63 = -rep_44.*rep_55 - rep_46.*rep_62 - rep_47.*rep_56 - rep_55.*Xi(3,:) - rep_56.*Xi(2,:) - rep_62.*Xi(1,:);
	rep_64 = rep_10.*rep_21;
	rep_65 = rep_44.*rep_58 + rep_46.*rep_64 + rep_47.*rep_59 + rep_58.*Xi(3,:) + rep_59.*Xi(2,:) + rep_64.*Xi(1,:);
	rep_66 = rep_5.*rep_8;
	rep_67 = rep_10.*rep_9;
	rep_68 = rep_13.*rep_44 + rep_13.*Xi(3,:) + rep_46.*rep_67 - rep_47.*rep_66 - rep_66.*Xi(2,:) + rep_67.*Xi(1,:);
	%% create output vector
	out = [(-rep_18.*rep_19 + rep_21.*rep_31).*W(6, 1) + (rep_18.*rep_23 + rep_31.*rep_32).*W(4, 1) + (rep_18.*rep_30 + rep_27.*rep_31).*W(5, 1) + (rep_17.*rep_48 + rep_18.*rep_53 + rep_27.*rep_49 + rep_31.*rep_52).*W(2, 1) + (rep_18.*rep_43 + rep_21.*rep_49 + rep_31.*rep_38 + rep_48.*rep_9).*W(3, 1) + (rep_18.*rep_51 + rep_31.*rep_50 + rep_32.*rep_49 + rep_35.*rep_48).*W(1, 1);...
		 0.*Xi(1,:);...
		 (rep_17.*rep_57 + rep_27.*rep_54 + rep_30.*rep_60).*W(5, 1) + (-rep_19.*rep_60 + rep_21.*rep_54 + rep_57.*rep_9).*W(6, 1) + (rep_23.*rep_60 + rep_32.*rep_54 + rep_35.*rep_57).*W(4, 1) + (rep_17.*rep_68 + rep_27.*rep_65 + rep_30.*rep_63 + rep_52.*rep_54 + rep_53.*rep_60 + rep_57.*(rep_28.*rep_33 - rep_30.*rep_61)).*W(2, 1) + (-rep_19.*rep_63 + rep_21.*rep_65 + rep_38.*rep_54 + rep_43.*rep_60 + rep_57.*(rep_19.*rep_61 + rep_20.*rep_33) + rep_68.*rep_9).*W(3, 1) + (rep_23.*rep_63 + rep_32.*rep_65 + rep_35.*rep_68 + rep_50.*rep_54 + rep_51.*rep_60 + rep_57.*(-rep_32.*rep_33 + rep_45.*rep_61)).*W(1, 1)];
end