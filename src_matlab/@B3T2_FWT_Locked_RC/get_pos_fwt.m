function out = get_pos_fwt(p,U,Xi)
	%GET_POS_FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = cos(rep_2);
	rep_4 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_1.*U(2);
	rep_5 = sin(rep_4);
	rep_6 = sin(rep_2);
	rep_7 = rep_5.*rep_6;
	rep_8 = cos(rep_4);
	rep_9 = rep_6.*rep_8;
	rep_10 = rep_3.*rep_5;
	rep_11 = rep_3.*rep_8;
	%% create output vector
	out = [X_f(1).*rep_3 + X_f(2).*rep_7 + X_f(3).*rep_9 + rep_3.*Xi(1,:) + rep_7.*Xi(2,:) + rep_9.*Xi(3,:);...
		 y_h + X_f(2).*rep_8 - X_f(3).*rep_5 - rep_5.*Xi(3,:) + rep_8.*Xi(2,:);...
		 -X_f(1).*rep_6 + X_f(2).*rep_10 + X_f(3).*rep_11 + rep_1.*(y_h.*U(2) + rep_1.*U(3) + U(1)) + rep_10.*Xi(2,:) + rep_11.*Xi(3,:) - rep_6.*Xi(1,:)];
end