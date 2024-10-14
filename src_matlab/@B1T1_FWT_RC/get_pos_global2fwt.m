function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = y_h.*U(3);
	rep_3 = sin(rep_2);
	rep_4 = rep_1.*rep_3;
	rep_5 = sin(U(4));
	rep_6 = y_h.*U(2);
	rep_7 = 2*rep_6;
	rep_8 = cos(rep_7);
	rep_9 = rep_5.*rep_8;
	rep_10 = cos(Lambda);
	rep_11 = cos(rep_2);
	rep_12 = rep_10.*rep_11;
	rep_13 = sin(rep_7);
	rep_14 = rep_12 + rep_13.*rep_4;
	rep_15 = rep_1.*rep_11;
	rep_16 = rep_10.*rep_3;
	rep_17 = -rep_13.*rep_16 + rep_15;
	rep_18 = cos(U(4));
	rep_19 = rep_1.*rep_18;
	rep_20 = sin(U(1));
	rep_21 = cos(U(1));
	rep_22 = -y_h.*(rep_20 + rep_21.*rep_6) + Xi(3,:);
	rep_23 = rep_21.*rep_8;
	rep_24 = -rep_11.*rep_23 + rep_13.*rep_20;
	rep_25 = rep_1.*rep_5;
	rep_26 = rep_20.*rep_8;
	rep_27 = rep_13.*rep_15 - rep_16;
	rep_28 = rep_1.*rep_26 + rep_21.*rep_27;
	rep_29 = rep_12.*rep_13 + rep_4;
	rep_30 = rep_10.*rep_26 + rep_21.*rep_29;
	rep_31 = -y_h.*(-rep_20.*rep_6 + rep_21) + Xi(2,:);
	rep_32 = rep_11.*rep_26 + rep_13.*rep_21;
	rep_33 = -rep_1.*rep_23 + rep_20.*rep_27;
	rep_34 = -rep_10.*rep_23 + rep_20.*rep_29;
	rep_35 = rep_10.*rep_18;
	%% create output vector
	out = [rep_22.*(rep_10.*rep_28 - rep_19.*rep_30 - rep_24.*rep_25) + rep_31.*(rep_1.*rep_18.*rep_34 - rep_10.*rep_33 - rep_25.*rep_32) + (rep_10.*rep_14 + rep_17.*rep_19 + rep_4.*rep_9).*Xi(1,:);...
		 rep_22.*(rep_1.*rep_28 + rep_10.*rep_24.*rep_5 + rep_30.*rep_35) + rep_31.*(-rep_1.*rep_33 + rep_10.*rep_32.*rep_5 - rep_34.*rep_35) + (rep_1.*rep_14 - rep_16.*rep_9 - rep_17.*rep_35).*Xi(1,:);...
		 rep_22.*(-rep_18.*rep_24 + rep_30.*rep_5) + rep_31.*(-rep_18.*rep_32 - rep_34.*rep_5) + (-rep_17.*rep_5 + rep_18.*rep_3.*rep_8).*Xi(1,:)];
end