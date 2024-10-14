function out = get_fwt_hinge_vector(p,U)
	%GET_FWT_HINGE_VECTOR Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	y_h = p.y_h;
	%% create common groups
	rep_1 = cos(Lambda);
	rep_2 = y_h.^2;
	rep_3 = y_h.*U(4) + rep_2.*U(5);
	rep_4 = cos(rep_3);
	rep_5 = sin(rep_3);
	rep_6 = sin(Lambda);
	rep_7 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_2.*U(2);
	rep_8 = rep_6.*sin(rep_7);
	%% create output vector
	out = [rep_1.*rep_4 + rep_5.*rep_8;...
		 rep_6.*cos(rep_7);...
		 -rep_1.*rep_5 + rep_4.*rep_8];
end