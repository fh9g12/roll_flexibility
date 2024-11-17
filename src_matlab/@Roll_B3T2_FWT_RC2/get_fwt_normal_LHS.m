function out = get_fwt_normal_LHS(p,U)
	%GET_FWT_NORMAL_LHS Auto-generated function from moyra
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
	rep_2 = y_h./b_i.^2;
	rep_3 = y_h.^2./b_i.^3;
	rep_4 = rep_2.*U(11) + rep_3.*U(12);
	rep_5 = sin(rep_4);
	rep_6 = 2*rep_2.*U(8) - 3*rep_3.*U(9) + 4*y_h.^3.*U(10)./b_i.^4;
	rep_7 = cos(rep_6);
	rep_8 = sin(U(13));
	rep_9 = sin(Lambda);
	rep_10 = cos(rep_4);
	rep_11 = sin(rep_6);
	rep_12 = cos(Lambda);
	rep_13 = rep_11.*rep_12;
	rep_14 = cos(U(1));
	rep_15 = sin(U(1));
	rep_16 = rep_10.*rep_7;
	rep_17 = rep_12.*rep_7;
	rep_18 = rep_10.*rep_13 + rep_5.*rep_9;
	%% create output vector
	out = [rep_1.*rep_5.*rep_7 + rep_8.*(rep_10.*rep_9 - rep_13.*rep_5);...
		 -rep_1.*(-rep_11.*rep_14 + rep_15.*rep_16) + rep_8.*(rep_14.*rep_17 + rep_15.*rep_18);...
		 -rep_1.*(-rep_11.*rep_15 - rep_14.*rep_16) - rep_8.*(rep_14.*rep_18 - rep_15.*rep_17)];
end