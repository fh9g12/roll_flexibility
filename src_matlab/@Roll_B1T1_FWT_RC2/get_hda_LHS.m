function out = get_hda_LHS(p,U)
	%GET_HDA_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	%% create output vector
	out = -2*y_h.*U(5)./b_i.^2;
end