function out = get_fwt_normal(p,U)
	%GET_FWT_NORMAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.*U(3);
	rep_2 = 2*y_h.*U(2);
	rep_3 = cos(rep_2);
	rep_4 = cos(U(1));
	rep_5 = sin(rep_2);
	rep_6 = sin(U(1));
	rep_7 = cos(rep_1);
	%% create output vector
	out = [rep_3.*sin(rep_1);...
		 -rep_3.*rep_6.*rep_7 - rep_4.*rep_5;...
		 rep_3.*rep_4.*rep_7 - rep_5.*rep_6];
end