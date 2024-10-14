function out = get_fwt_r_V_global(p,U,Xi)
	%GET_FWT_R_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_h = p.X_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = cos(U(2));
	rep_3 = rep_1.^2;
	rep_4 = sin(U(2));
	rep_5 = cos(Lambda);
	rep_6 = sin(U(1));
	rep_7 = rep_6.*U(4);
	rep_8 = cos(U(1));
	rep_9 = rep_8.*U(4);
	rep_10 = rep_2.*rep_9;
	rep_11 = rep_5.*rep_7;
	rep_12 = rep_4.*rep_9;
	rep_13 = rep_6.*U(5);
	rep_14 = rep_13.*rep_2;
	rep_15 = rep_11.*rep_2;
	rep_16 = rep_8.*U(5);
	rep_17 = rep_16.*rep_4;
	rep_18 = rep_17.*rep_5;
	rep_19 = rep_1.*Xi(1,:);
	rep_20 = rep_16.*rep_2;
	rep_21 = rep_4.*rep_7;
	rep_22 = rep_13.*rep_4.*rep_5;
	rep_23 = rep_10.*rep_5;
	%% create output vector
	out = [-rep_1.*rep_2.*U(5).*Xi(3,:) + rep_1.*rep_4.*rep_5.*U(5).*Xi(2,:) - rep_3.*rep_4.*U(5).*Xi(1,:);...
		 -X_h(2).*rep_7 - X_h(3).*rep_9 + rep_19.*(-rep_11 - rep_12 - rep_14 + rep_15 + rep_18) + (-rep_3.*rep_7 + rep_5.*(rep_12 + rep_14 - rep_15 - rep_18)).*Xi(2,:) + (-rep_10 - rep_11.*rep_4 + rep_2.*rep_5.*rep_8.*U(5) + rep_4.*rep_6.*U(5)).*Xi(3,:);...
		 X_h(2).*rep_9 - X_h(3).*rep_7 + rep_19.*(rep_20 - rep_21 + rep_22 - rep_23 + rep_5.*rep_9) + (rep_3.*rep_9 + rep_5.*(-rep_20 + rep_21 - rep_22 + rep_23)).*Xi(2,:) + (-rep_17 + rep_2.*rep_5.*rep_6.*U(5) - rep_2.*rep_7 + rep_4.*rep_5.*rep_8.*U(4)).*Xi(3,:)];
end