function out = get_pos_fwt2global_RHS(p,U,Xi)
	%GET_POS_FWT2GLOBAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
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
	rep_10 = 4*y_h.^3.*rep_9.*U(10) + 2*rep_3.*U(8) + 3*rep_5.*U(9);
	rep_11 = cos(rep_10);
	rep_12 = sin(U(13));
	rep_13 = sin(Lambda);
	rep_14 = cos(rep_6);
	rep_15 = rep_13.*rep_14;
	rep_16 = sin(rep_10);
	rep_17 = cos(Lambda);
	rep_18 = rep_17.*rep_7;
	rep_19 = rep_15 - rep_16.*rep_18;
	rep_20 = rep_13.*rep_7;
	rep_21 = rep_11.*rep_12;
	rep_22 = rep_14.*rep_17;
	rep_23 = rep_16.*rep_20 + rep_22;
	rep_24 = rep_1.*rep_19;
	rep_25 = cos(U(1));
	rep_26 = sin(U(1));
	rep_27 = y_h.*(b_i.*y_h.*U(3) + rep_2.*U(2) + rep_4.*U(4));
	rep_28 = y_h.*rep_9;
	rep_29 = rep_11.*rep_26;
	rep_30 = rep_14.*rep_29 + rep_16.*rep_25;
	rep_31 = rep_11.*rep_25;
	rep_32 = rep_16.*rep_22 + rep_20;
	rep_33 = -rep_17.*rep_31 + rep_26.*rep_32;
	rep_34 = rep_15.*rep_16 - rep_18;
	rep_35 = -rep_13.*rep_31 + rep_26.*rep_34;
	rep_36 = -rep_14.*rep_31 + rep_16.*rep_26;
	rep_37 = rep_17.*rep_29 + rep_25.*rep_32;
	rep_38 = rep_12.*rep_36;
	rep_39 = rep_13.*rep_29 + rep_25.*rep_34;
	rep_40 = rep_1.*rep_37;
	%% create output vector
	out = [(rep_1.*rep_11.*rep_7 - rep_12.*rep_19).*Xi(3,:) + (rep_13.*rep_23 - rep_17.*rep_24 - rep_18.*rep_21).*Xi(2,:) + (rep_13.*rep_24 + rep_17.*rep_23 + rep_20.*rep_21).*Xi(1,:);...
		 rep_28.*(rep_25.*rep_8 - rep_26.*rep_27) + (-rep_1.*rep_30 - rep_12.*rep_33).*Xi(3,:) + (rep_1.*rep_13.*rep_33 - rep_12.*rep_13.*rep_30 - rep_17.*rep_35).*Xi(1,:) + (-rep_1.*rep_17.*rep_33 + rep_12.*rep_17.*rep_30 - rep_13.*rep_35).*Xi(2,:);...
		 rep_28.*(rep_25.*rep_27 + rep_26.*rep_8) + (-rep_1.*rep_36 + rep_12.*rep_37).*Xi(3,:) + (-rep_13.*rep_38 - rep_13.*rep_40 + rep_17.*rep_39).*Xi(1,:) + (rep_13.*rep_39 + rep_17.*rep_38 + rep_17.*rep_40).*Xi(2,:)];
end