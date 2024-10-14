function out = get_fwt_normal(p,U)
	%GET_FWT_NORMAL Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = y_h.^2;
	rep_2 = y_h.*U(4) + rep_1.*U(5);
	rep_3 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_1.*U(2);
	rep_4 = cos(rep_3);
	%% create output vector
	out = [rep_4.*sin(rep_2);...
		 -sin(rep_3);...
		 rep_4.*cos(rep_2)];
end