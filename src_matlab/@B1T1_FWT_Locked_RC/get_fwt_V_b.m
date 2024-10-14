function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
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
	rep_4 = rep_3.*Xi(1,:);
	rep_5 = y_h.*U(6);
	rep_6 = y_h.*U(2);
	rep_7 = 2*rep_6;
	rep_8 = sin(rep_7);
	rep_9 = rep_2.*rep_5;
	rep_10 = cos(rep_7);
	rep_11 = y_h.*U(5);
	rep_12 = 2*rep_11;
	rep_13 = rep_12.*rep_3;
	rep_14 = rep_10.*rep_13.*Xi(2,:) + rep_10.*rep_9.*Xi(3,:) - rep_13.*rep_8.*Xi(3,:) - rep_4.*rep_5 + rep_8.*rep_9.*Xi(2,:);
	rep_15 = sin(U(1));
	rep_16 = cos(U(1));
	rep_17 = rep_16.*U(4);
	rep_18 = rep_9.*Xi(1,:);
	rep_19 = rep_15.*U(4);
	rep_20 = rep_19.*rep_8;
	rep_21 = rep_10.*rep_16;
	rep_22 = rep_10.*rep_15;
	rep_23 = rep_3.*rep_5;
	rep_24 = rep_15.*rep_8;
	rep_25 = rep_2.*rep_24;
	rep_26 = rep_10.*rep_19;
	rep_27 = rep_16.*rep_8;
	rep_28 = rep_17.*rep_8;
	rep_29 = rep_2.*rep_22;
	rep_30 = y_h.*(-rep_11.*rep_15 - rep_17.*rep_6 - rep_19) + rep_15.*rep_18 + rep_17.*rep_4 + (-rep_10.*rep_17.*rep_2 - rep_12.*rep_21 + rep_12.*rep_25 + rep_20 + rep_22.*rep_23).*Xi(3,:) + (y_h.*rep_15.*rep_3.*rep_8.*U(6) - rep_12.*rep_27 - rep_12.*rep_29 - rep_2.*rep_28 - rep_26).*Xi(2,:);
	rep_31 = rep_2.*rep_27;
	rep_32 = y_h.*(rep_11.*rep_16 + rep_17 - rep_19.*rep_6) - rep_16.*rep_18 + rep_19.*rep_4 + (-rep_12.*rep_22 - rep_12.*rep_31 - rep_2.*rep_26 - rep_21.*rep_23 - rep_28).*Xi(3,:) + (2*y_h.*rep_10.*rep_16.*rep_2.*U(5) + rep_10.*rep_16.*U(4) - rep_12.*rep_24 - rep_2.*rep_20 - rep_23.*rep_27).*Xi(2,:);
	rep_33 = rep_14.*rep_3;
	%% create output vector
	out = [rep_14.*rep_2 + rep_15.*rep_3.*rep_30 - rep_16.*rep_3.*rep_32;...
		 rep_30.*(rep_10.*rep_16 - rep_25) + rep_32.*(rep_22 + rep_31) + rep_33.*rep_8;...
		 rep_10.*rep_33 + rep_30.*(-rep_27 - rep_29) + rep_32.*(rep_10.*rep_16.*rep_2 - rep_24)];
end