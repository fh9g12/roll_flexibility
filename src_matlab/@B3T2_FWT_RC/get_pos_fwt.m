function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:35 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = cos(U(6));
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(4) + rep_2.*U(5);
	rep_4 = sin(rep_3);
	rep_5 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_2.*U(2);
	rep_6 = cos(rep_5);
	rep_7 = sin(U(6));
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
	rep_22 = rep_12.*rep_6;
	rep_23 = rep_22.*rep_7;
	rep_24 = -rep_12.*rep_20 + rep_19.*rep_8 - rep_23.*rep_4;
	rep_25 = -rep_1.*rep_11 + rep_23;
	rep_26 = rep_11.*rep_7;
	rep_27 = rep_8.*(-rep_1.*rep_22 + rep_12.*rep_6 - rep_26);
	rep_28 = rep_1.*rep_6;
	rep_29 = rep_12.^2.*rep_28 + rep_12.*rep_26 + rep_6.*rep_8.^2;
	rep_30 = rep_11.*rep_18 + rep_16;
	rep_31 = rep_28.*rep_9 + rep_30.*rep_7;
	rep_32 = rep_10.*rep_11 - rep_13;
	rep_33 = rep_1.*rep_30;
	rep_34 = rep_10.*rep_17 + rep_12.*rep_32 - rep_33.*rep_8;
	rep_35 = rep_12.*rep_33 - rep_17.*rep_18 + rep_32.*rep_8;
	%% create output vector
	out = [X_f(1).*rep_21 + X_f(2).*rep_24 + X_f(3).*rep_15 + rep_15.*Xi(3,:) + rep_21.*Xi(1,:) + rep_24.*Xi(2,:);...
		 y_h + X_f(1).*rep_27 + X_f(2).*rep_29 + X_f(3).*rep_25 + rep_25.*Xi(3,:) + rep_27.*Xi(1,:) + rep_29.*Xi(2,:);...
		 X_f(1).*rep_34 + X_f(2).*rep_35 + X_f(3).*rep_31 + rep_2.*(y_h.*U(2) + rep_2.*U(3) + U(1)) + rep_31.*Xi(3,:) + rep_34.*Xi(1,:) + rep_35.*Xi(2,:)];
end