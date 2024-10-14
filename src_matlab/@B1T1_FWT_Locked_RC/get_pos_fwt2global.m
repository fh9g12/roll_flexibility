function out = get_pos_fwt2global(p,U,Xi)
	%GET_POS_FWT2GLOBAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = cos(rep_1);
	rep_3 = sin(rep_1);
	rep_4 = y_h.*U(2);
	rep_5 = 2*rep_4;
	rep_6 = sin(rep_5);
	rep_7 = cos(rep_5);
	rep_8 = cos(U(1));
	rep_9 = sin(U(1));
	rep_10 = rep_3.*Xi(1,:);
	rep_11 = rep_6.*rep_9;
	rep_12 = rep_6.*rep_8;
	rep_13 = rep_7.*rep_9;
	%% create output vector
	out = [rep_2.*Xi(1,:) + rep_3.*rep_6.*Xi(2,:) + rep_3.*rep_7.*Xi(3,:);...
		 y_h.*(-rep_4.*rep_9 + rep_8) + rep_10.*rep_9 + (-rep_12 - rep_13.*rep_2).*Xi(3,:) + (-rep_11.*rep_2 + rep_7.*rep_8).*Xi(2,:);...
		 y_h.*(rep_4.*rep_8 + rep_9) - rep_10.*rep_8 + (-rep_11 + rep_2.*rep_7.*rep_8).*Xi(3,:) + (rep_12.*rep_2 + rep_13).*Xi(2,:)];
end