function out = get_pos_global2fwt_RHS(p,U,Xi)
	%GET_POS_GLOBAL2FWT_RHS Auto-generated function from moyra
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
	rep_15 = rep_13 + rep_14.*rep_6;
	rep_16 = rep_1.*rep_12;
	rep_17 = rep_11.*rep_5;
	rep_18 = -rep_14.*rep_17 + rep_16;
	rep_19 = cos(U(7));
	rep_20 = rep_1.*rep_19;
	rep_21 = sin(U(1));
	rep_22 = cos(U(1));
	rep_23 = y_h.^2.*rep_2.*U(2);
	rep_24 = -y_h.*rep_21 - rep_22.*rep_23 + Xi(3,:);
	rep_25 = rep_22.*rep_9;
	rep_26 = -rep_12.*rep_25 + rep_14.*rep_21;
	rep_27 = rep_1.*rep_7;
	rep_28 = rep_21.*rep_9;
	rep_29 = rep_14.*rep_16 - rep_17;
	rep_30 = rep_1.*rep_28 + rep_22.*rep_29;
	rep_31 = rep_13.*rep_14 + rep_6;
	rep_32 = rep_11.*rep_28 + rep_22.*rep_31;
	rep_33 = -y_h.*rep_22 + rep_21.*rep_23 + Xi(2,:);
	rep_34 = rep_12.*rep_28 + rep_14.*rep_22;
	rep_35 = -rep_1.*rep_25 + rep_21.*rep_29;
	rep_36 = -rep_11.*rep_25 + rep_21.*rep_31;
	rep_37 = rep_11.*rep_19;
	%% create output vector
	out = [rep_24.*(rep_11.*rep_30 - rep_20.*rep_32 - rep_26.*rep_27) + rep_33.*(rep_1.*rep_19.*rep_36 - rep_11.*rep_35 - rep_27.*rep_34) + (rep_10.*rep_6 + rep_11.*rep_15 + rep_18.*rep_20).*Xi(1,:);...
		 rep_24.*(rep_1.*rep_30 + rep_11.*rep_26.*rep_7 + rep_32.*rep_37) + rep_33.*(-rep_1.*rep_35 + rep_11.*rep_34.*rep_7 - rep_36.*rep_37) + (rep_1.*rep_15 - rep_10.*rep_17 - rep_18.*rep_37).*Xi(1,:);...
		 rep_24.*(-rep_19.*rep_26 + rep_32.*rep_7) + rep_33.*(-rep_19.*rep_34 - rep_36.*rep_7) + (-rep_18.*rep_7 + rep_19.*rep_5.*rep_9).*Xi(1,:)];
end