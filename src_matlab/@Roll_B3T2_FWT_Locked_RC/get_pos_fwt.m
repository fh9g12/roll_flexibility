function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = cos(rep_2);
	rep_4 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_1.*U(3);
	rep_5 = sin(rep_4);
	rep_6 = sin(rep_2);
	rep_7 = rep_5.*rep_6;
	rep_8 = cos(rep_4);
	rep_9 = rep_6.*rep_8;
	rep_10 = sin(U(1));
	rep_11 = rep_10.*rep_6;
	rep_12 = cos(U(1));
	rep_13 = y_h.*(y_h.*U(3) + rep_1.*U(4) + U(2));
	rep_14 = rep_10.*rep_5;
	rep_15 = rep_12.*rep_8 - rep_14.*rep_3;
	rep_16 = rep_12.*rep_5;
	rep_17 = rep_10.*rep_8;
	rep_18 = -rep_16 - rep_17.*rep_3;
	rep_19 = rep_12.*rep_6;
	rep_20 = rep_16.*rep_3 + rep_17;
	rep_21 = rep_12.*rep_3.*rep_8 - rep_14;
	%% create output vector
	out = [X_f(1).*rep_3 + X_f(2).*rep_7 + X_f(3).*rep_9 + rep_3.*Xi(1,:) + rep_7.*Xi(2,:) + rep_9.*Xi(3,:);...
		 -y_h.*(rep_10.*rep_13 - rep_12) + X_f(1).*rep_11 + X_f(2).*rep_15 + X_f(3).*rep_18 + rep_11.*Xi(1,:) + rep_15.*Xi(2,:) + rep_18.*Xi(3,:);...
		 y_h.*(rep_10 + rep_12.*rep_13) - X_f(1).*rep_19 + X_f(2).*rep_20 + X_f(3).*rep_21 - rep_19.*Xi(1,:) + rep_20.*Xi(2,:) + rep_21.*Xi(3,:)];
end