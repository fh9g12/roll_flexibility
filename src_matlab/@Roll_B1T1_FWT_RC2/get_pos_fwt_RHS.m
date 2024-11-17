function out = get_pos_fwt_RHS(p,U,Xi)
	%GET_POS_FWT_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:53 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(7));
	rep_2 = b_i.^(-2);
	rep_3 = y_h.*rep_2;
	rep_4 = rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = 2*rep_3.*U(5);
	rep_7 = cos(rep_6);
	rep_8 = sin(U(7));
	rep_9 = sin(Lambda);
	rep_10 = cos(rep_4);
	rep_11 = rep_10.*rep_9;
	rep_12 = sin(rep_6);
	rep_13 = cos(Lambda);
	rep_14 = rep_13.*rep_5;
	rep_15 = rep_11 - rep_12.*rep_14;
	rep_16 = rep_1.*rep_5.*rep_7 - rep_15.*rep_8;
	rep_17 = rep_5.*rep_9;
	rep_18 = rep_7.*rep_8;
	rep_19 = rep_10.*rep_13;
	rep_20 = rep_12.*rep_17 + rep_19;
	rep_21 = rep_1.*rep_15;
	rep_22 = rep_13.*rep_20 + rep_17.*rep_18 + rep_21.*rep_9;
	rep_23 = -rep_13.*rep_21 - rep_14.*rep_18 + rep_20.*rep_9;
	rep_24 = cos(U(1));
	rep_25 = sin(U(1));
	rep_26 = y_h.^2.*rep_2.*U(2);
	rep_27 = rep_25.*rep_7;
	rep_28 = rep_10.*rep_27 + rep_12.*rep_24;
	rep_29 = rep_24.*rep_7;
	rep_30 = rep_12.*rep_19 + rep_17;
	rep_31 = -rep_13.*rep_29 + rep_25.*rep_30;
	rep_32 = -rep_1.*rep_28 - rep_31.*rep_8;
	rep_33 = rep_11.*rep_12 - rep_14;
	rep_34 = rep_25.*rep_33 - rep_29.*rep_9;
	rep_35 = rep_1.*rep_31.*rep_9 - rep_13.*rep_34 - rep_28.*rep_8.*rep_9;
	rep_36 = -rep_1.*rep_13.*rep_31 + rep_13.*rep_28.*rep_8 - rep_34.*rep_9;
	rep_37 = -rep_10.*rep_29 + rep_12.*rep_25;
	rep_38 = rep_13.*rep_27 + rep_24.*rep_30;
	rep_39 = -rep_1.*rep_37 + rep_38.*rep_8;
	rep_40 = rep_37.*rep_8;
	rep_41 = rep_24.*rep_33 + rep_27.*rep_9;
	rep_42 = rep_1.*rep_38;
	rep_43 = rep_13.*rep_40 + rep_13.*rep_42 + rep_41.*rep_9;
	rep_44 = rep_13.*rep_41 - rep_40.*rep_9 - rep_42.*rep_9;
	%% create output vector
	out = [X_f(1).*rep_22 + X_f(2).*rep_23 + X_f(3).*rep_16 + rep_16.*Xi(3,:) + rep_22.*Xi(1,:) + rep_23.*Xi(2,:);...
		 y_h.*rep_24 + X_f(1).*rep_35 + X_f(2).*rep_36 + X_f(3).*rep_32 - rep_25.*rep_26 + rep_32.*Xi(3,:) + rep_35.*Xi(1,:) + rep_36.*Xi(2,:);...
		 y_h.*rep_25 + X_f(1).*rep_44 + X_f(2).*rep_43 + X_f(3).*rep_39 + rep_24.*rep_26 + rep_39.*Xi(3,:) + rep_43.*Xi(2,:) + rep_44.*Xi(1,:)];
end