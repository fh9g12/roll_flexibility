function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
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
	rep_5 = y_h.*U(9) + rep_1.*U(10);
	rep_6 = rep_5.*Xi(1,:);
	rep_7 = 2*y_h;
	rep_8 = 3*rep_1;
	rep_9 = 4*y_h.^3;
	rep_10 = rep_7.*U(1) + rep_8.*U(2) + rep_9.*U(3);
	rep_11 = sin(rep_10);
	rep_12 = rep_11.*Xi(2,:);
	rep_13 = rep_3.*rep_5;
	rep_14 = cos(rep_10);
	rep_15 = rep_14.*Xi(3,:);
	rep_16 = rep_7.*U(6) + rep_8.*U(7) + rep_9.*U(8);
	rep_17 = rep_16.*rep_4;
	rep_18 = rep_11.*Xi(3,:);
	rep_19 = rep_12.*rep_13 + rep_13.*rep_15 + rep_14.*rep_17.*Xi(2,:) - rep_17.*rep_18 - rep_4.*rep_6;
	rep_20 = rep_4.*rep_5;
	rep_21 = rep_1.*(y_h.*U(7) + rep_1.*U(8) + U(6)) - rep_12.*rep_20 + rep_14.*rep_16.*rep_3.*Xi(2,:) - rep_15.*rep_20 - rep_16.*rep_18.*rep_3 - rep_3.*rep_6;
	rep_22 = -rep_12.*rep_16 - rep_15.*rep_16;
	rep_23 = rep_19.*rep_4;
	rep_24 = rep_21.*rep_3;
	%% create output vector
	out = [rep_19.*rep_3 - rep_21.*rep_4;...
		 rep_11.*rep_23 + rep_11.*rep_24 + rep_14.*rep_22;...
		 -rep_11.*rep_22 + rep_14.*rep_23 + rep_14.*rep_24];
end