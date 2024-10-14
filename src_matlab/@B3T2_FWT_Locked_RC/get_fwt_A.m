function out = get_fwt_A(p,U)
	%GET_FWT_A Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = cos(rep_2);
	rep_4 = sin(rep_2);
	rep_5 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_1.*U(2);
	rep_6 = sin(rep_5);
	rep_7 = cos(rep_5);
	%% create output vector
	out = [rep_3 rep_4.*rep_6 rep_4.*rep_7;...
		 0 rep_7 -rep_6;...
		 -rep_4 rep_3.*rep_6 rep_3.*rep_7];
end