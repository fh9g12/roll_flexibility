function out = get_fwt_r_Q(p,U,W,Xi)
	%GET_FWT_R_Q Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(2));
	rep_3 = rep_1.*rep_2;
	rep_4 = sin(U(2));
	rep_5 = cos(Lambda);
	rep_6 = cos(U(1));
	rep_7 = rep_3 - rep_4.*rep_5.*rep_6;
	rep_8 = -rep_7;
	rep_9 = sin(Lambda);
	rep_10 = rep_9.^2;
	rep_11 = rep_1.*rep_4;
	rep_12 = rep_11 + rep_2.*rep_5.*rep_6;
	rep_13 = rep_10.*rep_6 + rep_12.*rep_5;
	rep_14 = -rep_12 + rep_5.*rep_6;
	rep_15 = rep_10.*rep_14.^2 + rep_13.^2 + rep_8.^2;
	rep_16 = rep_4.*rep_9;
	rep_17 = rep_11.*rep_5 + rep_2.*rep_6;
	rep_18 = -rep_17;
	rep_19 = rep_5.^2;
	rep_20 = rep_10.*rep_2 + rep_19;
	rep_21 = rep_4.*rep_6;
	rep_22 = rep_3.*rep_5;
	rep_23 = rep_1.*rep_5 + rep_21 - rep_22;
	rep_24 = -rep_23.*rep_9;
	rep_25 = rep_1.*rep_10;
	rep_26 = -rep_21 + rep_22;
	rep_27 = -rep_25 - rep_26.*rep_5;
	rep_28 = rep_9.*(1 - rep_2);
	rep_29 = rep_28.*rep_5;
	rep_30 = -rep_16.*rep_18 + rep_20.*rep_24 + rep_27.*rep_29;
	rep_31 = rep_23.*rep_9;
	rep_32 = rep_25 + rep_26.*rep_5;
	rep_33 = X_h(1) - rep_16.*Xi(3,:) + rep_20.*Xi(1,:) + rep_29.*Xi(2,:);
	rep_34 = -rep_33;
	rep_35 = rep_14.*rep_9;
	rep_36 = X_h(2).*rep_6 - X_h(3).*rep_1 + rep_13.*Xi(2,:) + rep_35.*Xi(1,:) + rep_8.*Xi(3,:);
	rep_37 = rep_16.*rep_36 + rep_34.*rep_7;
	rep_38 = X_h(2).*rep_1;
	rep_39 = X_h(3).*rep_6;
	rep_40 = rep_17.*Xi(3,:) + rep_31.*Xi(1,:) + rep_32.*Xi(2,:) + rep_38 + rep_39;
	rep_41 = -rep_36;
	rep_42 = rep_18.*rep_41 + rep_40.*rep_7;
	rep_43 = -rep_32;
	rep_44 = -rep_13;
	rep_45 = -rep_29.*rep_33 + rep_36.*rep_44 + rep_40.*rep_43;
	rep_46 = rep_16.*rep_33 + rep_18.*rep_40 + rep_36.*rep_7;
	rep_47 = -rep_20;
	rep_48 = -rep_31.*rep_40 + rep_33.*rep_47 - rep_35.*rep_36;
	rep_49 = rep_13.*rep_45 + rep_35.*rep_48 + rep_36 + rep_46.*rep_8;
	rep_50 = rep_18.*rep_46 + rep_18.*Xi(3,:) + rep_24.*rep_48 + rep_24.*Xi(1,:) + rep_27.*rep_45 + rep_27.*Xi(2,:) - rep_38 - rep_39;
	rep_51 = -rep_34.*rep_35 + rep_36.*rep_47;
	rep_52 = -rep_31.*rep_41 - rep_35.*rep_40;
	rep_53 = -rep_29.*rep_36 + rep_34.*rep_44;
	rep_54 = rep_40.*rep_44 + rep_41.*rep_43;
	rep_55 = rep_8.*rep_9;
	rep_56 = -rep_12.*rep_16 + rep_19.*rep_28.*rep_7 + rep_20.*rep_55;
	rep_57 = rep_2.*rep_9;
	rep_58 = -rep_17.*rep_57 - rep_23.*rep_4.*rep_9.^3 + rep_32.*rep_4.*rep_5.*rep_9;
	rep_59 = rep_18.*rep_5;
	rep_60 = rep_10.*rep_14.*rep_17 + rep_13.*rep_59 + rep_26.*rep_8;
	rep_61 = -rep_40;
	rep_62 = rep_10.*rep_4;
	rep_63 = rep_4.*rep_45.*rep_5.*rep_9 + rep_4.*rep_5.*rep_9.*Xi(2,:) - rep_46.*rep_57 - rep_48.*rep_62 - rep_57.*Xi(3,:) - rep_62.*Xi(1,:);
	rep_64 = rep_5.*rep_7;
	rep_65 = rep_12.*rep_46 + rep_12.*Xi(3,:) + rep_45.*rep_64 + rep_48.*rep_55 + rep_55.*Xi(1,:) + rep_64.*Xi(2,:);
	rep_66 = rep_17.*rep_9;
	rep_67 = rep_26.*rep_46 + rep_26.*Xi(3,:) + rep_45.*rep_59 + rep_48.*rep_66 + rep_59.*Xi(2,:) + rep_66.*Xi(1,:);
	%% create output vector
	out = [(-rep_15.*rep_16 + rep_17.*rep_30).*W(6, 1) + (rep_15.*rep_20 + rep_30.*rep_31).*W(4, 1) + (rep_15.*rep_29 + rep_30.*rep_32).*W(5, 1) + (rep_13.*rep_50 + rep_15.*rep_54 + rep_30.*rep_53 + rep_32.*rep_49).*W(2, 1) + (rep_15.*rep_42 + rep_17.*rep_49 + rep_30.*rep_37 + rep_50.*rep_8).*W(3, 1) + (rep_15.*rep_52 + rep_30.*rep_51 + rep_31.*rep_49 + rep_35.*rep_50).*W(1, 1);...
		 (rep_13.*rep_58 + rep_29.*rep_60 + rep_32.*rep_56).*W(5, 1) + (-rep_16.*rep_60 + rep_17.*rep_56 + rep_58.*rep_8).*W(6, 1) + (rep_20.*rep_60 + rep_31.*rep_56 + rep_35.*rep_58).*W(4, 1) + (rep_13.*rep_65 + rep_29.*rep_63 + rep_32.*rep_67 + rep_53.*rep_56 + rep_54.*rep_60 + rep_58.*(-rep_29.*rep_61 + rep_33.*rep_43)).*W(2, 1) + (-rep_16.*rep_63 + rep_17.*rep_67 + rep_37.*rep_56 + rep_42.*rep_60 + rep_58.*(rep_16.*rep_61 + rep_18.*rep_33) + rep_65.*rep_8).*W(3, 1) + (rep_20.*rep_63 + rep_31.*rep_67 + rep_35.*rep_65 + rep_51.*rep_56 + rep_52.*rep_60 + rep_58.*(-rep_31.*rep_33 + rep_47.*rep_61)).*W(1, 1);...
		 0.*Xi(1,:)];
end