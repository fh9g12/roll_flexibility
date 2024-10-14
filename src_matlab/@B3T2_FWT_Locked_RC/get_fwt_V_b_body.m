function out = get_fwt_V_b_body(p,U,Xi)
	%GET_FWT_V_B_BODY Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = sin(rep_2);
	rep_4 = y_h.*U(9) + rep_1.*U(10);
	rep_5 = rep_4.*Xi(1,:);
	rep_6 = 2*y_h;
	rep_7 = 3*rep_1;
	rep_8 = 4*y_h.^3;
	rep_9 = rep_6.*U(1) + rep_7.*U(2) + rep_8.*U(3);
	rep_10 = sin(rep_9);
	rep_11 = rep_10.*Xi(2,:);
	rep_12 = cos(rep_2);
	rep_13 = rep_12.*rep_4;
	rep_14 = cos(rep_9);
	rep_15 = rep_14.*Xi(3,:);
	rep_16 = rep_6.*U(6) + rep_7.*U(7) + rep_8.*U(8);
	rep_17 = rep_16.*rep_3;
	rep_18 = rep_10.*Xi(3,:);
	rep_19 = rep_3.*rep_4;
	%% create output vector
	out = [rep_11.*rep_13 + rep_13.*rep_15 + rep_14.*rep_17.*Xi(2,:) - rep_17.*rep_18 - rep_3.*rep_5;...
		 -rep_11.*rep_16 - rep_15.*rep_16;...
		 rep_1.*(y_h.*U(7) + rep_1.*U(8) + U(6)) - rep_11.*rep_19 + rep_12.*rep_14.*rep_16.*Xi(2,:) - rep_12.*rep_16.*rep_18 - rep_12.*rep_5 - rep_15.*rep_19];
end