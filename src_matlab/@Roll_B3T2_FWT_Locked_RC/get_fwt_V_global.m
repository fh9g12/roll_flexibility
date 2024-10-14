function out = get_fwt_V_global(p,U,Xi)
	%GET_FWT_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(11) + rep_1.*U(12);
	rep_3 = y_h.*U(5) + rep_1.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = rep_2.*rep_4;
	rep_6 = 2*y_h;
	rep_7 = 3*rep_1;
	rep_8 = 4*y_h.^3;
	rep_9 = rep_6.*U(2) + rep_7.*U(3) + rep_8.*U(4);
	rep_10 = sin(rep_9);
	rep_11 = cos(rep_3);
	rep_12 = rep_11.*rep_2;
	rep_13 = cos(rep_9);
	rep_14 = rep_6.*U(8) + rep_7.*U(9) + rep_8.*U(10);
	rep_15 = rep_14.*rep_4;
	rep_16 = cos(U(1));
	rep_17 = rep_16.*U(7);
	rep_18 = rep_4.*Xi(1,:);
	rep_19 = sin(U(1));
	rep_20 = rep_12.*Xi(1,:);
	rep_21 = rep_19.*U(7);
	rep_22 = y_h.*(y_h.*U(9) + rep_1.*U(10) + U(8));
	rep_23 = y_h.*(y_h.*U(3) + rep_1.*U(4) + U(2));
	rep_24 = rep_10.*rep_21;
	rep_25 = rep_14.*rep_16;
	rep_26 = rep_14.*rep_19;
	rep_27 = rep_10.*rep_26;
	rep_28 = rep_13.*rep_21;
	rep_29 = rep_10.*rep_17;
	rep_30 = rep_10.*rep_25;
	rep_31 = rep_13.*rep_26;
	rep_32 = rep_16.*rep_5;
	%% create output vector
	out = [rep_10.*rep_12.*Xi(2,:) - rep_10.*rep_15.*Xi(3,:) + rep_12.*rep_13.*Xi(3,:) + rep_13.*rep_15.*Xi(2,:) - rep_5.*Xi(1,:);...
		 -y_h.*(rep_17.*rep_23 + rep_19.*rep_22 + rep_21) + rep_17.*rep_18 + rep_19.*rep_20 + (-rep_11.*rep_13.*rep_17 + rep_11.*rep_27 + rep_13.*rep_19.*rep_5 - rep_13.*rep_25 + rep_24).*Xi(3,:) + (rep_10.*rep_19.*rep_2.*rep_4 - rep_11.*rep_29 - rep_11.*rep_31 - rep_28 - rep_30).*Xi(2,:);...
		 y_h.*(rep_16.*rep_22 + rep_17 - rep_21.*rep_23) - rep_16.*rep_20 + rep_18.*rep_21 + (-rep_10.*rep_32 + rep_11.*rep_13.*rep_14.*rep_16 - rep_11.*rep_24 + rep_13.*rep_16.*U(7) - rep_27).*Xi(2,:) + (-rep_11.*rep_28 - rep_11.*rep_30 - rep_13.*rep_32 - rep_29 - rep_31).*Xi(3,:)];
end