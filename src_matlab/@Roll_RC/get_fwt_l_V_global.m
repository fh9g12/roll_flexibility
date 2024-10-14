function out = get_fwt_l_V_global(p,U,Xi)
	%GET_FWT_L_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = cos(U(3));
	rep_3 = rep_1.^2;
	rep_4 = sin(U(3));
	rep_5 = rep_4.*U(6);
	rep_6 = cos(Lambda);
	rep_7 = sin(U(1));
	rep_8 = rep_7.*U(4);
	rep_9 = cos(U(1));
	rep_10 = rep_9.*U(4);
	rep_11 = rep_7.*U(6);
	rep_12 = rep_11.*rep_4;
	rep_13 = rep_6.*rep_8;
	rep_14 = rep_9.*U(6);
	rep_15 = rep_10.*rep_4;
	rep_16 = rep_11.*rep_2;
	rep_17 = rep_14.*rep_4;
	rep_18 = rep_13.*rep_2 + rep_15 + rep_16 + rep_17.*rep_6;
	rep_19 = rep_1.*Xi(1,:);
	rep_20 = rep_12.*rep_6 - rep_2.*rep_6.*rep_9.*U(4) - rep_2.*rep_9.*U(6) + rep_4.*rep_8;
	%% create output vector
	out = [-rep_1.*rep_2.*U(6).*Xi(3,:) - rep_1.*rep_5.*rep_6.*Xi(2,:) - rep_3.*rep_5.*Xi(1,:);...
		 X_h(2).*rep_8 - X_h(3).*rep_10 + rep_19.*(-rep_18 + rep_6.*rep_7.*U(4)) + (-rep_18.*rep_6 - rep_3.*rep_8).*Xi(2,:) + (-rep_10.*rep_2 + rep_12 + rep_13.*rep_4 - rep_14.*rep_2.*rep_6).*Xi(3,:);...
		 -X_h(2).*rep_10 - X_h(3).*rep_8 + rep_19.*(-rep_10.*rep_6 - rep_20) + (rep_10.*rep_3 - rep_20.*rep_6).*Xi(2,:) + (-rep_15.*rep_6 - rep_16.*rep_6 - rep_17 - rep_2.*rep_8).*Xi(3,:)];
end