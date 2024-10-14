function out = get_fwt_V_global(p,U,Xi)
	%GET_FWT_V_GLOBAL Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = sin(rep_2);
	rep_4 = 2*y_h;
	rep_5 = 3*rep_1;
	rep_6 = 4*y_h.^3;
	rep_7 = rep_4.*U(1) + rep_5.*U(2) + rep_6.*U(3);
	rep_8 = cos(rep_7);
	rep_9 = sin(U(6));
	rep_10 = rep_9.*U(12);
	rep_11 = rep_10.*rep_8;
	rep_12 = cos(U(6));
	rep_13 = y_h.*U(10) + rep_1.*U(11);
	rep_14 = cos(rep_2);
	rep_15 = sin(rep_7);
	rep_16 = rep_4.*U(7) + rep_5.*U(8) + rep_6.*U(9);
	rep_17 = rep_15.*rep_16;
	rep_18 = rep_12.*rep_17;
	rep_19 = sin(Lambda);
	rep_20 = rep_14.*rep_19;
	rep_21 = cos(Lambda);
	rep_22 = rep_21.*rep_3;
	rep_23 = rep_15.*rep_22;
	rep_24 = rep_20 - rep_23;
	rep_25 = rep_12.*U(12);
	rep_26 = rep_19.*rep_3;
	rep_27 = rep_13.*rep_26;
	rep_28 = rep_14.*rep_21;
	rep_29 = rep_15.*rep_28;
	rep_30 = rep_16.*rep_8;
	rep_31 = -rep_13.*rep_29 - rep_22.*rep_30 - rep_27;
	rep_32 = rep_25.*rep_8;
	rep_33 = rep_13.*rep_20;
	rep_34 = rep_8.*rep_9;
	rep_35 = rep_17.*rep_9;
	rep_36 = rep_10.*rep_24;
	rep_37 = rep_13.*rep_22;
	rep_38 = rep_15.*rep_33 + rep_26.*rep_30 - rep_37;
	rep_39 = rep_12.*rep_31;
	rep_40 = rep_13.*rep_28;
	rep_41 = rep_17.*rep_21;
	rep_42 = rep_41.*rep_9;
	rep_43 = rep_21.^2;
	rep_44 = rep_26 + rep_29;
	rep_45 = -rep_13.*rep_23 + rep_28.*rep_30 + rep_33;
	rep_46 = rep_10.*rep_44;
	rep_47 = rep_14.*rep_16.*rep_19.*rep_8 - rep_15.*rep_27 - rep_40;
	rep_48 = rep_12.*rep_45;
	%% create output vector
	out = [(-rep_11.*rep_3 + rep_12.*rep_13.*rep_14.*rep_8 - rep_18.*rep_3 - rep_24.*rep_25 - rep_31.*rep_9).*Xi(3,:) + (-rep_19.*rep_36 + rep_19.*rep_39 + rep_21.*rep_38 + rep_26.*rep_32 - rep_26.*rep_35 + rep_33.*rep_34).*Xi(1,:) + (rep_16.*rep_23.*rep_9 + rep_19.*rep_38 + rep_21.*rep_36 - rep_21.*rep_39 - rep_22.*rep_32 - rep_34.*rep_40).*Xi(2,:);...
		 rep_19.*(rep_12.*rep_15.*rep_16.*rep_21 - rep_15.*rep_25 + rep_21.*rep_8.*rep_9.*U(12) - rep_30.*rep_9 - rep_41).*Xi(1,:) + (rep_10.*rep_15 - rep_12.*rep_30 + rep_21.*rep_32 - rep_42).*Xi(3,:) + (-rep_11.*rep_43 + rep_12.*rep_15.*rep_21.*U(12) + rep_16.*rep_21.*rep_8.*rep_9 - rep_17.*rep_19.^2 - rep_18.*rep_43).*Xi(2,:);...
		 rep_1.*(y_h.*U(8) + rep_1.*U(9) + U(7)) + (-rep_10.*rep_14.*rep_8 - rep_12.*rep_13.*rep_3.*rep_8 + rep_12.*rep_44.*U(12) - rep_14.*rep_18 + rep_45.*rep_9).*Xi(3,:) + (rep_14.*rep_42 + rep_19.*rep_47 - rep_21.*rep_46 + rep_21.*rep_48 - rep_28.*rep_32 + rep_34.*rep_37).*Xi(2,:) + (rep_19.*rep_46 - rep_19.*rep_48 + rep_20.*rep_32 - rep_20.*rep_35 + rep_21.*rep_47 - rep_27.*rep_34).*Xi(1,:)];
end