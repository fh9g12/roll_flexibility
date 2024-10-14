function out = get_fwt_l_A(p,U)
	%GET_FWT_L_A Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = cos(U(3));
	rep_3 = sin(Lambda);
	rep_4 = rep_3.^2;
	rep_5 = sin(U(3));
	rep_6 = cos(U(1));
	rep_7 = rep_1.*rep_6;
	rep_8 = sin(U(1));
	rep_9 = rep_5.*rep_8;
	rep_10 = -rep_2.*rep_7 + rep_9;
	rep_11 = rep_2.*rep_8;
	rep_12 = rep_1.*rep_11 + rep_5.*rep_6;
	%% create output vector
	out = [rep_1.^2 + rep_2.*rep_4 rep_1.*rep_3.*(rep_2 - 1) -rep_3.*rep_5;...
		 rep_3.*(-rep_10 - rep_7) -rep_1.*rep_10 + rep_4.*rep_6 -rep_11 - rep_5.*rep_7;...
		 rep_3.*(-rep_1.*rep_8 + rep_12) rep_1.*rep_12 + rep_4.*rep_8 -rep_1.*rep_9 + rep_2.*rep_6];
end