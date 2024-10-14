function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:45 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(5) + rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = rep_1.*rep_4;
	rep_6 = sin(U(7));
	rep_7 = 4*y_h.^3.*U(4) + 2*y_h.*U(2) + 3*rep_2.*U(3);
	rep_8 = cos(rep_7);
	rep_9 = rep_6.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_3);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_12 + rep_13.*rep_5;
	rep_15 = rep_1.*rep_11;
	rep_16 = rep_10.*rep_4;
	rep_17 = -rep_13.*rep_16 + rep_15;
	rep_18 = cos(U(7));
	rep_19 = rep_1.*rep_18;
	rep_20 = sin(U(1));
	rep_21 = cos(U(1));
	rep_22 = y_h.*(y_h.*U(3) + rep_2.*U(4) + U(2));
	rep_23 = -y_h.*(rep_20 + rep_21.*rep_22) + Xi(3,:);
	rep_24 = rep_21.*rep_8;
	rep_25 = -rep_11.*rep_24 + rep_13.*rep_20;
	rep_26 = rep_1.*rep_6;
	rep_27 = rep_20.*rep_8;
	rep_28 = rep_13.*rep_15 - rep_16;
	rep_29 = rep_1.*rep_27 + rep_21.*rep_28;
	rep_30 = rep_12.*rep_13 + rep_5;
	rep_31 = rep_10.*rep_27 + rep_21.*rep_30;
	rep_32 = y_h.*(rep_20.*rep_22 - rep_21) + Xi(2,:);
	rep_33 = rep_11.*rep_27 + rep_13.*rep_21;
	rep_34 = -rep_1.*rep_24 + rep_20.*rep_28;
	rep_35 = -rep_10.*rep_24 + rep_20.*rep_30;
	rep_36 = rep_10.*rep_18;
	%% create output vector
	out = [rep_23.*(rep_10.*rep_29 - rep_19.*rep_31 - rep_25.*rep_26) + rep_32.*(rep_1.*rep_18.*rep_35 - rep_10.*rep_34 - rep_26.*rep_33) + (rep_10.*rep_14 + rep_17.*rep_19 + rep_5.*rep_9).*Xi(1,:);...
		 rep_23.*(rep_1.*rep_29 + rep_10.*rep_25.*rep_6 + rep_31.*rep_36) + rep_32.*(-rep_1.*rep_34 + rep_10.*rep_33.*rep_6 - rep_35.*rep_36) + (rep_1.*rep_14 - rep_16.*rep_9 - rep_17.*rep_36).*Xi(1,:);...
		 rep_23.*(-rep_18.*rep_25 + rep_31.*rep_6) + rep_32.*(-rep_18.*rep_33 - rep_35.*rep_6) + (-rep_17.*rep_6 + rep_18.*rep_4.*rep_8).*Xi(1,:)];
end