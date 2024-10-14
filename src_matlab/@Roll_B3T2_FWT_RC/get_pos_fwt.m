function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:45 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(7));
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(5) + rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_2.*U(3);
	rep_6 = cos(rep_5);
	rep_7 = sin(U(7));
	rep_8 = sin(Lambda);
	rep_9 = cos(rep_3);
	rep_10 = rep_8.*rep_9;
	rep_11 = sin(rep_5);
	rep_12 = cos(Lambda);
	rep_13 = rep_12.*rep_4;
	rep_14 = rep_10 - rep_11.*rep_13;
	rep_15 = rep_1.*rep_4.*rep_6 - rep_14.*rep_7;
	rep_16 = rep_4.*rep_8;
	rep_17 = rep_6.*rep_7;
	rep_18 = rep_12.*rep_9;
	rep_19 = rep_11.*rep_16 + rep_18;
	rep_20 = rep_1.*rep_14;
	rep_21 = rep_12.*rep_19 + rep_16.*rep_17 + rep_20.*rep_8;
	rep_22 = -rep_12.*rep_20 - rep_13.*rep_17 + rep_19.*rep_8;
	rep_23 = cos(U(1));
	rep_24 = sin(U(1));
	rep_25 = y_h.*(y_h.*U(3) + rep_2.*U(4) + U(2));
	rep_26 = rep_24.*rep_6;
	rep_27 = rep_11.*rep_23 + rep_26.*rep_9;
	rep_28 = rep_23.*rep_6;
	rep_29 = rep_11.*rep_18 + rep_16;
	rep_30 = -rep_12.*rep_28 + rep_24.*rep_29;
	rep_31 = -rep_1.*rep_27 - rep_30.*rep_7;
	rep_32 = rep_10.*rep_11 - rep_13;
	rep_33 = rep_24.*rep_32 - rep_28.*rep_8;
	rep_34 = rep_1.*rep_30.*rep_8 - rep_12.*rep_33 - rep_27.*rep_7.*rep_8;
	rep_35 = -rep_1.*rep_12.*rep_30 + rep_12.*rep_27.*rep_7 - rep_33.*rep_8;
	rep_36 = rep_11.*rep_24 - rep_28.*rep_9;
	rep_37 = rep_12.*rep_26 + rep_23.*rep_29;
	rep_38 = -rep_1.*rep_36 + rep_37.*rep_7;
	rep_39 = rep_36.*rep_7;
	rep_40 = rep_23.*rep_32 + rep_26.*rep_8;
	rep_41 = rep_1.*rep_37;
	rep_42 = rep_12.*rep_39 + rep_12.*rep_41 + rep_40.*rep_8;
	rep_43 = rep_12.*rep_40 - rep_39.*rep_8 - rep_41.*rep_8;
	%% create output vector
	out = [X_f(1).*rep_21 + X_f(2).*rep_22 + X_f(3).*rep_15 + rep_15.*Xi(3,:) + rep_21.*Xi(1,:) + rep_22.*Xi(2,:);...
		 -y_h.*(-rep_23 + rep_24.*rep_25) + X_f(1).*rep_34 + X_f(2).*rep_35 + X_f(3).*rep_31 + rep_31.*Xi(3,:) + rep_34.*Xi(1,:) + rep_35.*Xi(2,:);...
		 y_h.*(rep_23.*rep_25 + rep_24) + X_f(1).*rep_43 + X_f(2).*rep_42 + X_f(3).*rep_38 + rep_38.*Xi(3,:) + rep_42.*Xi(2,:) + rep_43.*Xi(1,:)];
end