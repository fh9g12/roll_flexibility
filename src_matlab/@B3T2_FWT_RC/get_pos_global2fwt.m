function out = get_pos_global2fwt(p,U,Xi)
	%GET_POS_GLOBAL2FWT Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = sin(Lambda);
	rep_2 = -y_h + Xi(2,:);
	rep_3 = sin(U(6));
	rep_4 = y_h.^2;
	rep_5 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_4.*U(2);
	rep_6 = sin(rep_5);
	rep_7 = rep_3.*rep_6;
	rep_8 = cos(Lambda);
	rep_9 = cos(rep_5);
	rep_10 = cos(U(6));
	rep_11 = rep_8.*rep_9;
	rep_12 = y_h.*U(4) + rep_4.*U(5);
	rep_13 = sin(rep_12);
	rep_14 = rep_1.*rep_13;
	rep_15 = rep_3.*rep_9;
	rep_16 = cos(rep_12);
	rep_17 = rep_16.*rep_8;
	rep_18 = rep_14.*rep_6 + rep_17;
	rep_19 = rep_1.*rep_16;
	rep_20 = rep_13.*rep_8;
	rep_21 = rep_19 - rep_20.*rep_6;
	rep_22 = rep_1.*rep_10;
	rep_23 = -rep_4.*(y_h.*U(2) + rep_4.*U(3) + U(1)) + Xi(3,:);
	rep_24 = rep_19.*rep_6 - rep_20;
	rep_25 = rep_14 + rep_17.*rep_6;
	rep_26 = rep_10.*rep_9;
	rep_27 = rep_10.*rep_8;
	%% create output vector
	out = [rep_1.*rep_2.*(-rep_10.*rep_11 - rep_7 + rep_8.*rep_9) + rep_23.*(rep_15.*rep_19 - rep_22.*rep_25 + rep_24.*rep_8) + (rep_14.*rep_15 + rep_18.*rep_8 + rep_21.*rep_22).*Xi(1,:);...
		 rep_2.*(rep_1.^2.*rep_9 + rep_26.*rep_8.^2 + rep_7.*rep_8) + rep_23.*(rep_1.*rep_24 - rep_15.*rep_17 + rep_25.*rep_27) + (rep_1.*rep_18 - rep_15.*rep_20 - rep_21.*rep_27).*Xi(1,:);...
		 rep_2.*(-rep_10.*rep_6 + rep_11.*rep_3) + rep_23.*(rep_16.*rep_26 + rep_25.*rep_3) + (rep_10.*rep_13.*rep_9 - rep_21.*rep_3).*Xi(1,:)];
end