function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:39 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(4));
	rep_2 = y_h.*U(3);
	rep_3 = sin(rep_2);
	rep_4 = y_h.*U(2);
	rep_5 = 2*rep_4;
	rep_6 = cos(rep_5);
	rep_7 = sin(U(4));
	rep_8 = sin(Lambda);
	rep_9 = cos(rep_2);
	rep_10 = rep_8.*rep_9;
	rep_11 = sin(rep_5);
	rep_12 = cos(Lambda);
	rep_13 = rep_12.*rep_3;
	rep_14 = rep_10 - rep_11.*rep_13;
	rep_15 = rep_1.*rep_3.*rep_6 - rep_14.*rep_7;
	rep_16 = rep_3.*rep_8;
	rep_17 = rep_6.*rep_7;
	rep_18 = rep_12.*rep_9;
	rep_19 = rep_11.*rep_16 + rep_18;
	rep_20 = rep_1.*rep_14;
	rep_21 = rep_12.*rep_19 + rep_16.*rep_17 + rep_20.*rep_8;
	rep_22 = -rep_12.*rep_20 - rep_13.*rep_17 + rep_19.*rep_8;
	rep_23 = cos(U(1));
	rep_24 = sin(U(1));
	rep_25 = rep_24.*rep_6;
	rep_26 = rep_11.*rep_23 + rep_25.*rep_9;
	rep_27 = rep_23.*rep_6;
	rep_28 = rep_11.*rep_18 + rep_16;
	rep_29 = -rep_12.*rep_27 + rep_24.*rep_28;
	rep_30 = -rep_1.*rep_26 - rep_29.*rep_7;
	rep_31 = rep_10.*rep_11 - rep_13;
	rep_32 = rep_24.*rep_31 - rep_27.*rep_8;
	rep_33 = rep_1.*rep_29.*rep_8 - rep_12.*rep_32 - rep_26.*rep_7.*rep_8;
	rep_34 = -rep_1.*rep_12.*rep_29 + rep_12.*rep_26.*rep_7 - rep_32.*rep_8;
	rep_35 = rep_11.*rep_24 - rep_27.*rep_9;
	rep_36 = rep_12.*rep_25 + rep_23.*rep_28;
	rep_37 = -rep_1.*rep_35 + rep_36.*rep_7;
	rep_38 = rep_35.*rep_7;
	rep_39 = rep_23.*rep_31 + rep_25.*rep_8;
	rep_40 = rep_1.*rep_36;
	rep_41 = rep_12.*rep_38 + rep_12.*rep_40 + rep_39.*rep_8;
	rep_42 = rep_12.*rep_39 - rep_38.*rep_8 - rep_40.*rep_8;
	%% create output vector
	out = [X_f(1).*rep_21 + X_f(2).*rep_22 + X_f(3).*rep_15 + rep_15.*Xi(3,:) + rep_21.*Xi(1,:) + rep_22.*Xi(2,:);...
		 y_h.*(rep_23 - rep_24.*rep_4) + X_f(1).*rep_33 + X_f(2).*rep_34 + X_f(3).*rep_30 + rep_30.*Xi(3,:) + rep_33.*Xi(1,:) + rep_34.*Xi(2,:);...
		 y_h.*(rep_23.*rep_4 + rep_24) + X_f(1).*rep_42 + X_f(2).*rep_41 + X_f(3).*rep_37 + rep_37.*Xi(3,:) + rep_41.*Xi(2,:) + rep_42.*Xi(1,:)];
end