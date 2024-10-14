function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = y_h.*U(3);
	rep_3 = cos(rep_2);
	rep_4 = sin(Lambda);
	rep_5 = sin(rep_2);
	rep_6 = 2*y_h.*U(2);
	rep_7 = sin(rep_6);
	rep_8 = sin(U(1));
	rep_9 = rep_1.*rep_5;
	rep_10 = cos(U(1));
	rep_11 = cos(rep_6);
	rep_12 = rep_3.*rep_7;
	%% create output vector
	out = [rep_1.*rep_3 + rep_4.*rep_5.*rep_7;...
		 rep_4.*(rep_10.*rep_11 - rep_12.*rep_8) + rep_8.*rep_9;...
		 -rep_10.*rep_9 + rep_4.*(rep_10.*rep_12 + rep_11.*rep_8)];
end