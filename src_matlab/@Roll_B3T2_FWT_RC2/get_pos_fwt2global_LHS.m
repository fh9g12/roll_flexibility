function out = get_pos_fwt2global_LHS(p,U,Xi)
	%GET_POS_FWT2GLOBAL_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = cos(U(13));
	rep_2 = b_i.^2;
	rep_3 = y_h./rep_2;
	rep_4 = y_h.^2;
	rep_5 = rep_4./b_i.^3;
	rep_6 = rep_3.*U(11) + rep_5.*U(12);
	rep_7 = sin(rep_6);
	rep_8 = b_i.^4;
	rep_9 = 1./rep_8;
	rep_10 = 4*y_h.^3.*rep_9.*U(10) + 2*rep_3.*U(8) - 3*rep_5.*U(9);
	rep_11 = cos(rep_10);
	rep_12 = sin(U(13));
	rep_13 = sin(Lambda);
	rep_14 = cos(rep_6);
	rep_15 = rep_13.*rep_14;
	rep_16 = sin(rep_10);
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_7;
	rep_19 = rep_15 - rep_16.*rep_18;
	rep_20 = rep_11.*rep_12;
	rep_21 = rep_14.*rep_17;
	rep_22 = rep_13.*rep_7;
	rep_23 = -rep_16.*rep_22 - rep_21;
	rep_24 = cos(U(1));
	rep_25 = sin(U(1));
	rep_26 = y_h.*(-b_i.*y_h.*U(9) + rep_2.*U(8) + rep_4.*U(10));
	rep_27 = y_h.*rep_9;
	rep_28 = rep_11.*rep_25;
	rep_29 = rep_14.*rep_28 - rep_16.*rep_24;
	rep_30 = rep_11.*rep_24;
	rep_31 = rep_16.*rep_21 + rep_22;
	rep_32 = rep_17.*rep_30 + rep_25.*rep_31;
	rep_33 = rep_12.*rep_29;
	rep_34 = -rep_15.*rep_16 + rep_17.*rep_7;
	rep_35 = -rep_13.*rep_30 + rep_25.*rep_34;
	rep_36 = rep_1.*rep_32;
	rep_37 = -rep_14.*rep_30 - rep_16.*rep_25;
	rep_38 = -rep_17.*rep_28 + rep_24.*rep_31;
	rep_39 = rep_13.*rep_28 + rep_24.*rep_34;
	rep_40 = rep_1.*rep_38;
	%% create output vector
	out = [(rep_1.*rep_11.*rep_7 + rep_12.*rep_19).*Xi(3,:) + (rep_1.*rep_13.*rep_19 - rep_17.*rep_23 - rep_20.*rep_22).*Xi(1,:) + (rep_1.*rep_17.*rep_19 + rep_13.*rep_23 - rep_18.*rep_20).*Xi(2,:);...
		 -rep_27.*(rep_24.*rep_8 + rep_25.*rep_26) + (-rep_1.*rep_29 + rep_12.*rep_32).*Xi(3,:) + (rep_13.*rep_33 + rep_13.*rep_36 + rep_17.*rep_35).*Xi(1,:) + (-rep_13.*rep_35 + rep_17.*rep_33 + rep_17.*rep_36).*Xi(2,:);...
		 -rep_27.*(-rep_24.*rep_26 + rep_25.*rep_8) + (-rep_1.*rep_37 - rep_12.*rep_38).*Xi(3,:) + (rep_12.*rep_13.*rep_37 - rep_13.*rep_40 - rep_17.*rep_39).*Xi(1,:) + (rep_12.*rep_17.*rep_37 + rep_13.*rep_39 - rep_17.*rep_40).*Xi(2,:)];
end