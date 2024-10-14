function out = get_hda(p,U)
	%GET_HDA Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	%% create output vector
	out = 4*y_h.^3.*U(3) + 3*y_h.^2.*U(2) + 2*y_h.*U(1);
end