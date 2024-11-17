function out = get_pos_fwt_RHS(p,U,Xi)
	%GET_POS_FWT_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:45 2024 
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
	rep_10 = 4*y_h.^3.*rep_9.*U(10) + 2*rep_3.*U(8) + 3*rep_5.*U(9);
	rep_11 = cos(rep_10);
	rep_12 = sin(U(13));
	rep_13 = sin(Lambda);
	rep_14 = cos(rep_6);
	rep_15 = rep_13.*rep_14;
	rep_16 = sin(rep_10);
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_7;
	rep_19 = rep_15 - rep_16.*rep_18;
	rep_20 = rep_1.*rep_11.*rep_7 - rep_12.*rep_19;
	rep_21 = rep_13.*rep_7;
	rep_22 = rep_11.*rep_12;
	rep_23 = rep_14.*rep_17;
	rep_24 = rep_16.*rep_21 + rep_23;
	rep_25 = rep_1.*rep_19;
	rep_26 = rep_13.*rep_25 + rep_17.*rep_24 + rep_21.*rep_22;
	rep_27 = rep_13.*rep_24 - rep_17.*rep_25 - rep_18.*rep_22;
	rep_28 = cos(U(1));
	rep_29 = sin(U(1));
	rep_30 = y_h.*(b_i.*y_h.*U(3) + rep_2.*U(2) + rep_4.*U(4));
	rep_31 = y_h.*rep_9;
	rep_32 = rep_11.*rep_29;
	rep_33 = rep_14.*rep_32 + rep_16.*rep_28;
	rep_34 = rep_11.*rep_28;
	rep_35 = rep_16.*rep_23 + rep_21;
	rep_36 = -rep_17.*rep_34 + rep_29.*rep_35;
	rep_37 = -rep_1.*rep_33 - rep_12.*rep_36;
	rep_38 = rep_15.*rep_16 - rep_18;
	rep_39 = -rep_13.*rep_34 + rep_29.*rep_38;
	rep_40 = rep_1.*rep_13.*rep_36 - rep_12.*rep_13.*rep_33 - rep_17.*rep_39;
	rep_41 = -rep_1.*rep_17.*rep_36 + rep_12.*rep_17.*rep_33 - rep_13.*rep_39;
	rep_42 = -rep_14.*rep_34 + rep_16.*rep_29;
	rep_43 = rep_17.*rep_32 + rep_28.*rep_35;
	rep_44 = -rep_1.*rep_42 + rep_12.*rep_43;
	rep_45 = rep_12.*rep_42;
	rep_46 = rep_13.*rep_32 + rep_28.*rep_38;
	rep_47 = rep_1.*rep_43;
	rep_48 = rep_13.*rep_46 + rep_17.*rep_45 + rep_17.*rep_47;
	rep_49 = -rep_13.*rep_45 - rep_13.*rep_47 + rep_17.*rep_46;
	%% create output vector
	out = [X_f(1).*rep_26 + X_f(2).*rep_27 + X_f(3).*rep_20 + rep_20.*Xi(3,:) + rep_26.*Xi(1,:) + rep_27.*Xi(2,:);...
		 X_f(1).*rep_40 + X_f(2).*rep_41 + X_f(3).*rep_37 + rep_31.*(rep_28.*rep_8 - rep_29.*rep_30) + rep_37.*Xi(3,:) + rep_40.*Xi(1,:) + rep_41.*Xi(2,:);...
		 X_f(1).*rep_49 + X_f(2).*rep_48 + X_f(3).*rep_44 + rep_31.*(rep_28.*rep_30 + rep_29.*rep_8) + rep_44.*Xi(3,:) + rep_48.*Xi(2,:) + rep_49.*Xi(1,:)];
end