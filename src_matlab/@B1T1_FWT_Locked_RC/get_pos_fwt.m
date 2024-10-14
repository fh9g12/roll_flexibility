function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = cos(rep_1);
	rep_3 = y_h.*U(2);
	rep_4 = 2*rep_3;
	rep_5 = sin(rep_4);
	rep_6 = sin(rep_1);
	rep_7 = rep_5.*rep_6;
	rep_8 = cos(rep_4);
	rep_9 = rep_6.*rep_8;
	rep_10 = sin(U(1));
	rep_11 = rep_10.*rep_6;
	rep_12 = cos(U(1));
	rep_13 = rep_10.*rep_5;
	rep_14 = rep_12.*rep_8 - rep_13.*rep_2;
	rep_15 = rep_12.*rep_5;
	rep_16 = rep_10.*rep_8;
	rep_17 = -rep_15 - rep_16.*rep_2;
	rep_18 = rep_12.*rep_6;
	rep_19 = rep_15.*rep_2 + rep_16;
	rep_20 = rep_12.*rep_2.*rep_8 - rep_13;
	%% create output vector
	out = [X_f(1).*rep_2 + X_f(2).*rep_7 + X_f(3).*rep_9 + rep_2.*Xi(1,:) + rep_7.*Xi(2,:) + rep_9.*Xi(3,:);...
		 y_h.*(-rep_10.*rep_3 + rep_12) + X_f(1).*rep_11 + X_f(2).*rep_14 + X_f(3).*rep_17 + rep_11.*Xi(1,:) + rep_14.*Xi(2,:) + rep_17.*Xi(3,:);...
		 y_h.*(rep_10 + rep_12.*rep_3) - X_f(1).*rep_18 + X_f(2).*rep_19 + X_f(3).*rep_20 - rep_18.*Xi(1,:) + rep_19.*Xi(2,:) + rep_20.*Xi(3,:)];
end