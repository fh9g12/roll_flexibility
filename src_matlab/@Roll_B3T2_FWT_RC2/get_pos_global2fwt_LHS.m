function out = get_pos_global2fwt_LHS(p,U,Xi)
	%GET_POS_GLOBAL2FWT_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = b_i.^2;
	rep_3 = y_h./rep_2;
	rep_4 = y_h.^2;
	rep_5 = rep_4./b_i.^3;
	rep_6 = rep_3.*U(11) + rep_5.*U(12);
	rep_7 = sin(rep_6);
	rep_8 = rep_1.*rep_7;
	rep_9 = sin(U(13));
	rep_10 = b_i.^4;
	rep_11 = 1./rep_10;
	rep_12 = 4*y_h.^3.*rep_11.*U(10) + 2*rep_3.*U(8) - 3*rep_5.*U(9);
	rep_13 = cos(rep_12);
	rep_14 = rep_13.*rep_9;
	rep_15 = cos(Lambda);
	rep_16 = cos(rep_6);
	rep_17 = rep_15.*rep_16;
	rep_18 = sin(rep_12);
	rep_19 = -rep_17 - rep_18.*rep_8;
	rep_20 = cos(U(13));
	rep_21 = rep_1.*rep_16;
	rep_22 = rep_15.*rep_7;
	rep_23 = -rep_18.*rep_22 + rep_21;
	rep_24 = cos(U(1));
	rep_25 = sin(U(1));
	rep_26 = y_h.*(-b_i.*y_h.*U(9) + rep_2.*U(8) + rep_4.*U(10));
	rep_27 = y_h.*rep_11;
	rep_28 = rep_27.*(rep_10.*rep_24 + rep_25.*rep_26) + Xi(2,:);
	rep_29 = rep_13.*rep_25;
	rep_30 = rep_16.*rep_29 - rep_18.*rep_24;
	rep_31 = rep_13.*rep_24;
	rep_32 = rep_15.*rep_7 - rep_18.*rep_21;
	rep_33 = -rep_1.*rep_31 + rep_25.*rep_32;
	rep_34 = rep_17.*rep_18 + rep_8;
	rep_35 = rep_15.*rep_31 + rep_25.*rep_34;
	rep_36 = rep_1.*rep_20;
	rep_37 = rep_27.*(rep_10.*rep_25 - rep_24.*rep_26) + Xi(3,:);
	rep_38 = -rep_16.*rep_31 - rep_18.*rep_25;
	rep_39 = rep_1.*rep_29 + rep_24.*rep_32;
	rep_40 = -rep_15.*rep_29 + rep_24.*rep_34;
	rep_41 = rep_15.*rep_20;
	rep_42 = rep_15.*rep_9;
	%% create output vector
	out = [rep_28.*(rep_1.*rep_30.*rep_9 + rep_15.*rep_33 + rep_35.*rep_36) + rep_37.*(rep_1.*rep_38.*rep_9 - rep_15.*rep_39 - rep_36.*rep_40) + (rep_1.*rep_20.*rep_23 - rep_14.*rep_8 - rep_15.*rep_19).*Xi(1,:);...
		 rep_28.*(-rep_1.*rep_33 + rep_30.*rep_42 + rep_35.*rep_41) + rep_37.*(rep_1.*rep_39 + rep_38.*rep_42 - rep_40.*rep_41) + (rep_1.*rep_19 - rep_14.*rep_22 + rep_23.*rep_41).*Xi(1,:);...
		 rep_28.*(-rep_20.*rep_30 + rep_35.*rep_9) + rep_37.*(-rep_20.*rep_38 - rep_40.*rep_9) + (rep_13.*rep_20.*rep_7 + rep_23.*rep_9).*Xi(1,:)];
end