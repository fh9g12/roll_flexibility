function out = get_fwt_V_global(p,U,Xi)
	%GET_FWT_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = sin(rep_1);
	rep_3 = rep_2.*Xi(1,:);
	rep_4 = y_h.*U(6);
	rep_5 = y_h.*U(2);
	rep_6 = 2*rep_5;
	rep_7 = sin(rep_6);
	rep_8 = cos(rep_1);
	rep_9 = rep_4.*rep_8;
	rep_10 = cos(rep_6);
	rep_11 = y_h.*U(5);
	rep_12 = 2*rep_11.*rep_2;
	rep_13 = cos(U(1));
	rep_14 = rep_13.*U(4);
	rep_15 = sin(U(1));
	rep_16 = rep_9.*Xi(1,:);
	rep_17 = rep_15.*U(4);
	rep_18 = rep_11.*rep_15;
	rep_19 = rep_17.*rep_7;
	rep_20 = rep_11.*rep_13;
	rep_21 = 2*rep_20;
	rep_22 = rep_2.*rep_4;
	rep_23 = 2*rep_18;
	rep_24 = rep_23.*rep_7;
	rep_25 = rep_10.*rep_17;
	rep_26 = rep_21.*rep_7;
	rep_27 = rep_14.*rep_7;
	rep_28 = rep_10.*rep_23;
	rep_29 = rep_13.*rep_22;
	%% create output vector
	out = [rep_10.*rep_12.*Xi(2,:) + rep_10.*rep_9.*Xi(3,:) - rep_12.*rep_7.*Xi(3,:) - rep_3.*rep_4 + rep_7.*rep_9.*Xi(2,:);...
		 y_h.*(-rep_14.*rep_5 - rep_17 - rep_18) + rep_14.*rep_3 + rep_15.*rep_16 + (-rep_10.*rep_14.*rep_8 + rep_10.*rep_15.*rep_22 - rep_10.*rep_21 + rep_19 + rep_24.*rep_8).*Xi(3,:) + (y_h.*rep_15.*rep_2.*rep_7.*U(6) - rep_25 - rep_26 - rep_27.*rep_8 - rep_28.*rep_8).*Xi(2,:);...
		 y_h.*(rep_14 - rep_17.*rep_5 + rep_20) - rep_13.*rep_16 + rep_17.*rep_3 + (-rep_10.*rep_29 - rep_25.*rep_8 - rep_26.*rep_8 - rep_27 - rep_28).*Xi(3,:) + (2*y_h.*rep_10.*rep_13.*rep_8.*U(5) + rep_10.*rep_13.*U(4) - rep_19.*rep_8 - rep_24 - rep_29.*rep_7).*Xi(2,:)];
end