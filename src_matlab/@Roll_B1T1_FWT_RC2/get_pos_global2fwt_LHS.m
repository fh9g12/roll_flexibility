function out = get_pos_global2fwt_LHS(p,U,Xi)
	%GET_POS_GLOBAL2FWT_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:54 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = b_i.^(-2);
	rep_3 = y_h.*rep_2;
	rep_4 = rep_3.*U(6);
	rep_5 = sin(rep_4);
	rep_6 = rep_1.*rep_5;
	rep_7 = sin(U(7));
	rep_8 = 2*rep_3.*U(5);
	rep_9 = cos(rep_8);
	rep_10 = rep_7.*rep_9;
	rep_11 = cos(Lambda);
	rep_12 = cos(rep_4);
	rep_13 = rep_11.*rep_12;
	rep_14 = sin(rep_8);
	rep_15 = -rep_13 - rep_14.*rep_6;
	rep_16 = cos(U(7));
	rep_17 = rep_1.*rep_12;
	rep_18 = rep_11.*rep_5;
	rep_19 = -rep_14.*rep_18 + rep_17;
	rep_20 = cos(U(1));
	rep_21 = sin(U(1));
	rep_22 = y_h.^2.*rep_2.*U(5);
	rep_23 = y_h.*rep_20 + rep_21.*rep_22 + Xi(2,:);
	rep_24 = rep_21.*rep_9;
	rep_25 = rep_12.*rep_24 - rep_14.*rep_20;
	rep_26 = rep_20.*rep_9;
	rep_27 = rep_11.*rep_5 - rep_14.*rep_17;
	rep_28 = -rep_1.*rep_26 + rep_21.*rep_27;
	rep_29 = rep_13.*rep_14 + rep_6;
	rep_30 = rep_11.*rep_26 + rep_21.*rep_29;
	rep_31 = rep_1.*rep_16;
	rep_32 = y_h.*rep_21 - rep_20.*rep_22 + Xi(3,:);
	rep_33 = -rep_12.*rep_26 - rep_14.*rep_21;
	rep_34 = rep_1.*rep_24 + rep_20.*rep_27;
	rep_35 = -rep_11.*rep_24 + rep_20.*rep_29;
	rep_36 = rep_11.*rep_16;
	rep_37 = rep_11.*rep_7;
	%% create output vector
	out = [rep_23.*(rep_1.*rep_25.*rep_7 + rep_11.*rep_28 + rep_30.*rep_31) + rep_32.*(rep_1.*rep_33.*rep_7 - rep_11.*rep_34 - rep_31.*rep_35) + (rep_1.*rep_16.*rep_19 - rep_10.*rep_6 - rep_11.*rep_15).*Xi(1,:);...
		 rep_23.*(-rep_1.*rep_28 + rep_25.*rep_37 + rep_30.*rep_36) + rep_32.*(rep_1.*rep_34 + rep_33.*rep_37 - rep_35.*rep_36) + (rep_1.*rep_15 - rep_10.*rep_18 + rep_19.*rep_36).*Xi(1,:);...
		 rep_23.*(-rep_16.*rep_25 + rep_30.*rep_7) + rep_32.*(-rep_16.*rep_33 - rep_35.*rep_7) + (rep_16.*rep_5.*rep_9 + rep_19.*rep_7).*Xi(1,:)];
end