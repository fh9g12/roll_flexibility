function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = cos(rep_2);
	rep_4 = sin(U(1));
	rep_5 = sin(rep_2);
	rep_6 = cos(U(1));
	rep_7 = y_h.*(y_h.*U(3) + rep_1.*U(4) + U(2));
	rep_8 = y_h.*(rep_4.*rep_7 - rep_6) + Xi(2,:);
	rep_9 = -y_h.*(rep_4 + rep_6.*rep_7) + Xi(3,:);
	rep_10 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_1.*U(3);
	rep_11 = sin(rep_10);
	rep_12 = rep_5.*Xi(1,:);
	rep_13 = cos(rep_10);
	rep_14 = rep_13.*rep_4;
	rep_15 = rep_11.*rep_6;
	rep_16 = rep_11.*rep_4;
	%% create output vector
	out = [rep_3.*Xi(1,:) + rep_4.*rep_5.*rep_8 - rep_5.*rep_6.*rep_9;...
		 rep_11.*rep_12 + rep_8.*(rep_13.*rep_6 - rep_16.*rep_3) + rep_9.*(rep_14 + rep_15.*rep_3);...
		 rep_12.*rep_13 + rep_8.*(-rep_14.*rep_3 - rep_15) + rep_9.*(rep_13.*rep_3.*rep_6 - rep_16)];
end