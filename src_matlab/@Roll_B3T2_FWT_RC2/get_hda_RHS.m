function out = get_hda_RHS(p,U)
	%GET_HDA_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	%% create output vector
	out = 2*y_h.*U(8)./b_i.^2 + 3*y_h.^2.*U(9)./b_i.^3 + 4*y_h.^3.*U(10)./b_i.^4;
end