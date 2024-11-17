function out = get_pos_fwt_LHS(p,U,Xi)
	%GET_POS_FWT_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = cos(U(13));
	rep_2 = b_i.^2;
	rep_3 = y_h./rep_2;
	rep_4 = y_h.^2;
	rep_5 = rep_4./b_i.^3;
	rep_6 = rep_3.*U(11) + rep_5.*U(12);
	rep_7 = sin(rep_6);
	rep_8 = b_i.^4;
	rep_9 = 1./rep_8;
	rep_10 = 4*y_h.^3.*rep_9.*U(10) + 2*rep_3.*U(8) - 3*rep_5.*U(9);
	rep_11 = cos(rep_10);
	rep_12 = sin(U(13));
	rep_13 = sin(Lambda);
	rep_14 = cos(rep_6);
	rep_15 = rep_13.*rep_14;
	rep_16 = sin(rep_10);
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_7;
	rep_19 = rep_15 - rep_16.*rep_18;
	rep_20 = rep_1.*rep_11.*rep_7 + rep_12.*rep_19;
	rep_21 = rep_11.*rep_12;
	rep_22 = rep_14.*rep_17;
	rep_23 = rep_13.*rep_7;
	rep_24 = -rep_16.*rep_23 - rep_22;
	rep_25 = rep_1.*rep_17.*rep_19 + rep_13.*rep_24 - rep_18.*rep_21;
	rep_26 = rep_1.*rep_13.*rep_19 - rep_17.*rep_24 - rep_21.*rep_23;
	rep_27 = cos(U(1));
	rep_28 = sin(U(1));
	rep_29 = y_h.*(-b_i.*y_h.*U(9) + rep_2.*U(8) + rep_4.*U(10));
	rep_30 = y_h.*rep_9;
	rep_31 = rep_11.*rep_28;
	rep_32 = rep_14.*rep_31 - rep_16.*rep_27;
	rep_33 = rep_11.*rep_27;
	rep_34 = rep_16.*rep_22 + rep_23;
	rep_35 = rep_17.*rep_33 + rep_28.*rep_34;
	rep_36 = -rep_1.*rep_32 + rep_12.*rep_35;
	rep_37 = rep_12.*rep_32;
	rep_38 = -rep_15.*rep_16 + rep_17.*rep_7;
	rep_39 = -rep_13.*rep_33 + rep_28.*rep_38;
	rep_40 = rep_1.*rep_35;
	rep_41 = rep_13.*rep_37 + rep_13.*rep_40 + rep_17.*rep_39;
	rep_42 = -rep_13.*rep_39 + rep_17.*rep_37 + rep_17.*rep_40;
	rep_43 = -rep_14.*rep_33 - rep_16.*rep_28;
	rep_44 = -rep_17.*rep_31 + rep_27.*rep_34;
	rep_45 = -rep_1.*rep_43 - rep_12.*rep_44;
	rep_46 = rep_13.*rep_31 + rep_27.*rep_38;
	rep_47 = rep_1.*rep_44;
	rep_48 = rep_12.*rep_17.*rep_43 + rep_13.*rep_46 - rep_17.*rep_47;
	rep_49 = rep_12.*rep_13.*rep_43 - rep_13.*rep_47 - rep_17.*rep_46;
	%% create output vector
	out = [X_f(1).*rep_26 + X_f(2).*rep_25 + X_f(3).*rep_20 + rep_20.*Xi(3,:) + rep_25.*Xi(2,:) + rep_26.*Xi(1,:);...
		 X_f(1).*rep_41 + X_f(2).*rep_42 + X_f(3).*rep_36 - rep_30.*(rep_27.*rep_8 + rep_28.*rep_29) + rep_36.*Xi(3,:) + rep_41.*Xi(1,:) + rep_42.*Xi(2,:);...
		 X_f(1).*rep_49 + X_f(2).*rep_48 + X_f(3).*rep_45 - rep_30.*(-rep_27.*rep_29 + rep_28.*rep_8) + rep_45.*Xi(3,:) + rep_48.*Xi(2,:) + rep_49.*Xi(1,:)];
end