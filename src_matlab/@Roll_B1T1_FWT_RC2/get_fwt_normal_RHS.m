function out = get_fwt_normal_RHS(p,U)
	%GET_FWT_NORMAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(U(7));
	rep_2 = y_h./b_i.^2;
	rep_3 = rep_2.*U(6);
	rep_4 = sin(rep_3);
	rep_5 = 2*rep_2.*U(5);
	rep_6 = cos(rep_5);
	rep_7 = sin(U(7));
	rep_8 = sin(Lambda);
	rep_9 = cos(rep_3);
	rep_10 = sin(rep_5);
	rep_11 = cos(Lambda);
	rep_12 = rep_10.*rep_11;
	rep_13 = cos(U(1));
	rep_14 = sin(U(1));
	rep_15 = rep_6.*rep_9;
	rep_16 = rep_11.*rep_6;
	rep_17 = rep_12.*rep_9 + rep_4.*rep_8;
	%% create output vector
	out = [rep_1.*rep_4.*rep_6 - rep_7.*(-rep_12.*rep_4 + rep_8.*rep_9);...
		 -rep_1.*(rep_10.*rep_13 + rep_14.*rep_15) - rep_7.*(-rep_13.*rep_16 + rep_14.*rep_17);...
		 -rep_1.*(rep_10.*rep_14 - rep_13.*rep_15) + rep_7.*(rep_13.*rep_17 + rep_14.*rep_16)];
end