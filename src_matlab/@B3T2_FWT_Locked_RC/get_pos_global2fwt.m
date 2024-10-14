function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = cos(rep_2);
	rep_4 = sin(rep_2);
	rep_5 = -rep_1.*(y_h.*U(2) + rep_1.*U(3) + U(1)) + Xi(3,:);
	rep_6 = -y_h + Xi(2,:);
	rep_7 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_1.*U(2);
	rep_8 = cos(rep_7);
	rep_9 = sin(rep_7);
	rep_10 = rep_4.*Xi(1,:);
	rep_11 = rep_3.*rep_5;
	%% create output vector
	out = [rep_3.*Xi(1,:) - rep_4.*rep_5;...
		 rep_10.*rep_9 + rep_11.*rep_9 + rep_6.*rep_8;...
		 rep_10.*rep_8 + rep_11.*rep_8 - rep_6.*rep_9];
end