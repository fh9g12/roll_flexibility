function out = get_hda(p,U)
	%GET_HDA Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_h = p.y_h;
	%% create common groups
	%% create output vector
	out = 2*y_h.*U(2);
end