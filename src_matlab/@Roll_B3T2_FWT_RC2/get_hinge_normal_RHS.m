function out = get_hinge_normal_RHS(p,U)
	%GET_HINGE_NORMAL_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:47 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	y_h = p.y_h;
	%% create common groups
	rep_1 = b_i.^4;
	rep_2 = 1./rep_1;
	rep_3 = sin(U(1));
	rep_4 = cos(U(1));
	rep_5 = y_h.*(2*b_i.^2.*U(2) + 3*b_i.*y_h.*U(3) + 4*y_h.^2.*U(4));
	%% create output vector
	out = [y_h.*(b_i.*U(5) + y_h.*U(6))./b_i.^3;...
		 rep_2.*(-rep_1.*rep_3 - rep_4.*rep_5);...
		 rep_2.*(rep_1.*rep_4 - rep_3.*rep_5)];
end