function out = get_hinge_normal(p,U)
	%GET_HINGE_NORMAL Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	%% create output vector
	out = [y_h.*(y_h.*U(5) + U(4));...
		 y_h.*(-4*y_h.^2.*U(3) - 3*y_h.*U(2) - 2*U(1));...
		 1];
end