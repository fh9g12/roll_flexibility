function out = get_hinge_normal(p,U)
	%GET_HINGE_NORMAL Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = 2*y_h.*U(2);
	%% create output vector
	out = [y_h.*U(3);...
		 -rep_1 - rep_2.*rep_3;...
		 -rep_1.*rep_3 + rep_2];
end