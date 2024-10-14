function out = get_pos_fwt2global(p,U,Xi)
	%GET_POS_FWT2GLOBAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
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
	rep_15 = rep_3.*rep_8;
	rep_16 = rep_6.*rep_7;
	rep_17 = rep_12.*rep_9;
	rep_18 = rep_11.*rep_15 + rep_17;
	rep_19 = rep_1.*rep_14;
	rep_20 = cos(U(1));
	rep_21 = sin(U(1));
	rep_22 = rep_21.*rep_6;
	rep_23 = rep_11.*rep_20 + rep_22.*rep_9;
	rep_24 = rep_20.*rep_6;
	rep_25 = rep_11.*rep_17 + rep_15;
	rep_26 = -rep_12.*rep_24 + rep_21.*rep_25;
	rep_27 = rep_10.*rep_11 - rep_13;
	rep_28 = rep_21.*rep_27 - rep_24.*rep_8;
	rep_29 = rep_11.*rep_21 - rep_24.*rep_9;
	rep_30 = rep_12.*rep_22 + rep_20.*rep_25;
	rep_31 = rep_29.*rep_7;
	rep_32 = rep_20.*rep_27 + rep_22.*rep_8;
	rep_33 = rep_1.*rep_30;
	%% create output vector
	out = [(rep_1.*rep_3.*rep_6 - rep_14.*rep_7).*Xi(3,:) + (rep_12.*rep_18 + rep_15.*rep_16 + rep_19.*rep_8).*Xi(1,:) + (-rep_12.*rep_19 - rep_13.*rep_16 + rep_18.*rep_8).*Xi(2,:);...
		 y_h.*(rep_20 - rep_21.*rep_4) + (-rep_1.*rep_23 - rep_26.*rep_7).*Xi(3,:) + (-rep_1.*rep_12.*rep_26 + rep_12.*rep_23.*rep_7 - rep_28.*rep_8).*Xi(2,:) + (rep_1.*rep_26.*rep_8 - rep_12.*rep_28 - rep_23.*rep_7.*rep_8).*Xi(1,:);...
		 y_h.*(rep_20.*rep_4 + rep_21) + (-rep_1.*rep_29 + rep_30.*rep_7).*Xi(3,:) + (rep_12.*rep_31 + rep_12.*rep_33 + rep_32.*rep_8).*Xi(2,:) + (rep_12.*rep_32 - rep_31.*rep_8 - rep_33.*rep_8).*Xi(1,:)];
end