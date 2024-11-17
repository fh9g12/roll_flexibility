function out = get_pos_fwt2global_LHS(p,U,Xi)
	%GET_POS_FWT2GLOBAL_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
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
	rep_16 = rep_7.*rep_8;
	rep_17 = rep_10.*rep_13;
	rep_18 = rep_5.*rep_9;
	rep_19 = -rep_12.*rep_18 - rep_17;
	rep_20 = cos(U(1));
	rep_21 = sin(U(1));
	rep_22 = y_h.^2.*rep_2.*U(5);
	rep_23 = rep_21.*rep_7;
	rep_24 = rep_10.*rep_23 - rep_12.*rep_20;
	rep_25 = rep_20.*rep_7;
	rep_26 = rep_12.*rep_17 + rep_18;
	rep_27 = rep_13.*rep_25 + rep_21.*rep_26;
	rep_28 = rep_24.*rep_8;
	rep_29 = -rep_11.*rep_12 + rep_13.*rep_5;
	rep_30 = rep_21.*rep_29 - rep_25.*rep_9;
	rep_31 = rep_1.*rep_27;
	rep_32 = -rep_10.*rep_25 - rep_12.*rep_21;
	rep_33 = -rep_13.*rep_23 + rep_20.*rep_26;
	rep_34 = rep_20.*rep_29 + rep_23.*rep_9;
	rep_35 = rep_1.*rep_33;
	%% create output vector
	out = [(rep_1.*rep_5.*rep_7 + rep_15.*rep_8).*Xi(3,:) + (rep_1.*rep_13.*rep_15 - rep_14.*rep_16 + rep_19.*rep_9).*Xi(2,:) + (rep_1.*rep_15.*rep_9 - rep_13.*rep_19 - rep_16.*rep_18).*Xi(1,:);...
		 -y_h.*rep_20 - rep_21.*rep_22 + (-rep_1.*rep_24 + rep_27.*rep_8).*Xi(3,:) + (rep_13.*rep_28 + rep_13.*rep_31 - rep_30.*rep_9).*Xi(2,:) + (rep_13.*rep_30 + rep_28.*rep_9 + rep_31.*rep_9).*Xi(1,:);...
		 -y_h.*rep_21 + rep_20.*rep_22 + (-rep_1.*rep_32 - rep_33.*rep_8).*Xi(3,:) + (-rep_13.*rep_34 + rep_32.*rep_8.*rep_9 - rep_35.*rep_9).*Xi(1,:) + (rep_13.*rep_32.*rep_8 - rep_13.*rep_35 + rep_34.*rep_9).*Xi(2,:)];
end