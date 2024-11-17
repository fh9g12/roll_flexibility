function out = get_pos_fwt2global_RHS(p,U,Xi)
	%GET_POS_FWT2GLOBAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:54 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
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
	rep_16 = rep_5.*rep_9;
	rep_17 = rep_7.*rep_8;
	rep_18 = rep_10.*rep_13;
	rep_19 = rep_12.*rep_16 + rep_18;
	rep_20 = rep_1.*rep_15;
	rep_21 = cos(U(1));
	rep_22 = sin(U(1));
	rep_23 = y_h.^2.*rep_2.*U(2);
	rep_24 = rep_22.*rep_7;
	rep_25 = rep_10.*rep_24 + rep_12.*rep_21;
	rep_26 = rep_21.*rep_7;
	rep_27 = rep_12.*rep_18 + rep_16;
	rep_28 = -rep_13.*rep_26 + rep_22.*rep_27;
	rep_29 = rep_11.*rep_12 - rep_14;
	rep_30 = rep_22.*rep_29 - rep_26.*rep_9;
	rep_31 = -rep_10.*rep_26 + rep_12.*rep_22;
	rep_32 = rep_13.*rep_24 + rep_21.*rep_27;
	rep_33 = rep_31.*rep_8;
	rep_34 = rep_21.*rep_29 + rep_24.*rep_9;
	rep_35 = rep_1.*rep_32;
	%% create output vector
	out = [(rep_1.*rep_5.*rep_7 - rep_15.*rep_8).*Xi(3,:) + (rep_13.*rep_19 + rep_16.*rep_17 + rep_20.*rep_9).*Xi(1,:) + (-rep_13.*rep_20 - rep_14.*rep_17 + rep_19.*rep_9).*Xi(2,:);...
		 y_h.*rep_21 - rep_22.*rep_23 + (-rep_1.*rep_25 - rep_28.*rep_8).*Xi(3,:) + (-rep_1.*rep_13.*rep_28 + rep_13.*rep_25.*rep_8 - rep_30.*rep_9).*Xi(2,:) + (rep_1.*rep_28.*rep_9 - rep_13.*rep_30 - rep_25.*rep_8.*rep_9).*Xi(1,:);...
		 y_h.*rep_22 + rep_21.*rep_23 + (-rep_1.*rep_31 + rep_32.*rep_8).*Xi(3,:) + (rep_13.*rep_33 + rep_13.*rep_35 + rep_34.*rep_9).*Xi(2,:) + (rep_13.*rep_34 - rep_33.*rep_9 - rep_35.*rep_9).*Xi(1,:)];
end