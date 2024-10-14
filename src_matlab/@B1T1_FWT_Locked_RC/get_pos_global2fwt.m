function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = cos(rep_1);
	rep_3 = sin(U(1));
	rep_4 = sin(rep_1);
	rep_5 = cos(U(1));
	rep_6 = y_h.*U(2);
	rep_7 = -y_h.*(-rep_3.*rep_6 + rep_5) + Xi(2,:);
	rep_8 = -y_h.*(rep_3 + rep_5.*rep_6) + Xi(3,:);
	rep_9 = 2*rep_6;
	rep_10 = sin(rep_9);
	rep_11 = rep_4.*Xi(1,:);
	rep_12 = cos(rep_9);
	rep_13 = rep_12.*rep_3;
	rep_14 = rep_10.*rep_5;
	rep_15 = rep_10.*rep_3;
	%% create output vector
	out = [rep_2.*Xi(1,:) + rep_3.*rep_4.*rep_7 - rep_4.*rep_5.*rep_8;...
		 rep_10.*rep_11 + rep_7.*(rep_12.*rep_5 - rep_15.*rep_2) + rep_8.*(rep_13 + rep_14.*rep_2);...
		 rep_11.*rep_12 + rep_7.*(-rep_13.*rep_2 - rep_14) + rep_8.*(rep_12.*rep_2.*rep_5 - rep_15)];
end