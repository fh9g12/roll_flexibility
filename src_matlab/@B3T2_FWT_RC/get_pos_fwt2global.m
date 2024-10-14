function out = get_pos_fwt2global(p,U,Xi)
	%GET_POS_FWT2GLOBAL Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
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
	rep_15 = rep_4.*rep_8;
	rep_16 = rep_6.*rep_7;
	rep_17 = rep_12.*rep_9;
	rep_18 = rep_11.*rep_15 + rep_17;
	rep_19 = rep_1.*rep_14;
	rep_20 = rep_12.*rep_6;
	rep_21 = rep_20.*rep_7;
	rep_22 = rep_11.*rep_7;
	rep_23 = rep_1.*rep_6;
	rep_24 = rep_11.*rep_17 + rep_15;
	rep_25 = rep_10.*rep_11 - rep_13;
	rep_26 = rep_1.*rep_24;
	%% create output vector
	out = [(rep_1.*rep_4.*rep_6 - rep_14.*rep_7).*Xi(3,:) + (rep_12.*rep_18 + rep_15.*rep_16 + rep_19.*rep_8).*Xi(1,:) + (-rep_12.*rep_19 + rep_18.*rep_8 - rep_21.*rep_4).*Xi(2,:);...
		 y_h + rep_8.*(-rep_1.*rep_20 + rep_12.*rep_6 - rep_22).*Xi(1,:) + (-rep_1.*rep_11 + rep_21).*Xi(3,:) + (rep_12.^2.*rep_23 + rep_12.*rep_22 + rep_6.*rep_8.^2).*Xi(2,:);...
		 rep_2.*(y_h.*U(2) + rep_2.*U(3) + U(1)) + (rep_23.*rep_9 + rep_24.*rep_7).*Xi(3,:) + (rep_10.*rep_16 + rep_12.*rep_25 - rep_26.*rep_8).*Xi(1,:) + (rep_12.*rep_26 - rep_16.*rep_17 + rep_25.*rep_8).*Xi(2,:)];
end