function out = get_fwt_V_b(p,U,Xi)
	%GET_FWT_V_B Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(5) + rep_1.*U(6);
	rep_3 = cos(rep_2);
	rep_4 = y_h.*U(11) + rep_1.*U(12);
	rep_5 = sin(rep_2);
	rep_6 = rep_4.*rep_5;
	rep_7 = 2*y_h;
	rep_8 = 3*rep_1;
	rep_9 = 4*y_h.^3;
	rep_10 = rep_7.*U(2) + rep_8.*U(3) + rep_9.*U(4);
	rep_11 = sin(rep_10);
	rep_12 = rep_3.*rep_4;
	rep_13 = cos(rep_10);
	rep_14 = rep_7.*U(8) + rep_8.*U(9) + rep_9.*U(10);
	rep_15 = rep_14.*rep_5;
	rep_16 = rep_11.*rep_12.*Xi(2,:) - rep_11.*rep_15.*Xi(3,:) + rep_12.*rep_13.*Xi(3,:) + rep_13.*rep_15.*Xi(2,:) - rep_6.*Xi(1,:);
	rep_17 = sin(U(1));
	rep_18 = cos(U(1));
	rep_19 = rep_18.*U(7);
	rep_20 = rep_5.*Xi(1,:);
	rep_21 = rep_12.*Xi(1,:);
	rep_22 = rep_17.*U(7);
	rep_23 = y_h.*(y_h.*U(9) + rep_1.*U(10) + U(8));
	rep_24 = y_h.*(y_h.*U(3) + rep_1.*U(4) + U(2));
	rep_25 = rep_11.*rep_22;
	rep_26 = rep_13.*rep_18;
	rep_27 = rep_13.*rep_17;
	rep_28 = rep_11.*rep_17;
	rep_29 = rep_14.*rep_28;
	rep_30 = rep_13.*rep_22;
	rep_31 = rep_11.*rep_19;
	rep_32 = rep_11.*rep_18;
	rep_33 = rep_14.*rep_32;
	rep_34 = rep_14.*rep_27;
	rep_35 = -y_h.*(rep_17.*rep_23 + rep_19.*rep_24 + rep_22) + rep_17.*rep_21 + rep_19.*rep_20 + (-rep_13.*rep_19.*rep_3 - rep_14.*rep_26 + rep_25 + rep_27.*rep_6 + rep_29.*rep_3).*Xi(3,:) + (rep_11.*rep_17.*rep_4.*rep_5 - rep_3.*rep_31 - rep_3.*rep_34 - rep_30 - rep_33).*Xi(2,:);
	rep_36 = y_h.*(rep_18.*rep_23 + rep_19 - rep_22.*rep_24) - rep_18.*rep_21 + rep_20.*rep_22 + (-rep_26.*rep_6 - rep_3.*rep_30 - rep_3.*rep_33 - rep_31 - rep_34).*Xi(3,:) + (rep_13.*rep_14.*rep_18.*rep_3 + rep_13.*rep_18.*U(7) - rep_25.*rep_3 - rep_29 - rep_32.*rep_6).*Xi(2,:);
	rep_37 = rep_16.*rep_5;
	%% create output vector
	out = [rep_16.*rep_3 + rep_17.*rep_35.*rep_5 - rep_18.*rep_36.*rep_5;...
		 rep_11.*rep_37 + rep_35.*(rep_13.*rep_18 - rep_28.*rep_3) + rep_36.*(rep_27 + rep_3.*rep_32);...
		 rep_13.*rep_37 + rep_35.*(-rep_27.*rep_3 - rep_32) + rep_36.*(rep_13.*rep_18.*rep_3 - rep_28)];
end