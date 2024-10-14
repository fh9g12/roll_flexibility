function out = get_pos_global2fwt_l(p,U,Xi)
	%GET_POS_GLOBAL2FWT_L Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = -X_h(1) + Xi(1,:);
	rep_2 = cos(Lambda);
	rep_3 = cos(U(3));
	rep_4 = sin(Lambda);
	rep_5 = rep_4.^2;
	rep_6 = sin(U(1));
	rep_7 = cos(U(1));
	rep_8 = X_h(2).*rep_6 - X_h(3).*rep_7 + Xi(3,:);
	rep_9 = rep_2.*rep_6;
	rep_10 = sin(U(3));
	rep_11 = rep_10.*rep_7 + rep_3.*rep_9;
	rep_12 = X_h(2).*rep_7 + X_h(3).*rep_6 + Xi(2,:);
	rep_13 = rep_2.*rep_7;
	rep_14 = rep_10.*rep_6;
	rep_15 = -rep_13.*rep_3 + rep_14;
	rep_16 = rep_1.*rep_4;
	%% create output vector
	out = [rep_1.*(rep_2.^2 + rep_3.*rep_5) + rep_12.*rep_4.*(-rep_13 - rep_15) + rep_4.*rep_8.*(rep_11 - rep_9);...
		 rep_12.*(-rep_15.*rep_2 + rep_5.*rep_7) + rep_16.*rep_2.*(rep_3 - 1) + rep_8.*(rep_11.*rep_2 + rep_5.*rep_6);...
		 -rep_10.*rep_16 + rep_12.*(-rep_10.*rep_13 - rep_3.*rep_6) + rep_8.*(-rep_14.*rep_2 + rep_3.*rep_7)];
end