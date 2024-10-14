function out = get_pos_fwt_r(p,U,Xi)
	%GET_POS_FWT_R Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = sin(U(2));
	rep_3 = cos(Lambda);
	rep_4 = cos(U(2));
	rep_5 = rep_1.^2;
	rep_6 = cos(U(1));
	rep_7 = sin(U(1));
	rep_8 = rep_4.*rep_7;
	rep_9 = rep_2.*rep_7;
	rep_10 = rep_3.*rep_4.*rep_6 + rep_9;
	rep_11 = rep_1.*Xi(1,:);
	rep_12 = rep_2.*rep_6;
	rep_13 = rep_3.*rep_8;
	%% create output vector
	out = [X_h(1) - rep_1.*rep_2.*Xi(3,:) + rep_1.*rep_3.*(1 - rep_4).*Xi(2,:) + (rep_3.^2 + rep_4.*rep_5).*Xi(1,:);...
		 X_h(2).*rep_6 - X_h(3).*rep_7 + rep_11.*(-rep_10 + rep_3.*rep_6) + (rep_10.*rep_3 + rep_5.*rep_6).*Xi(2,:) + (rep_2.*rep_3.*rep_6 - rep_8).*Xi(3,:);...
		 X_h(2).*rep_7 + X_h(3).*rep_6 + rep_11.*(rep_12 - rep_13 + rep_3.*rep_7) + (rep_3.*rep_9 + rep_4.*rep_6).*Xi(3,:) + (rep_3.*(-rep_12 + rep_13) + rep_5.*rep_7).*Xi(2,:)];
end