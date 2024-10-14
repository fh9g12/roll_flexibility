function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	Lambda = p.Lambda;
	X_f = p.X_f;
	X_h = p.X_h;
	g = p.g;
	X_w = p.X_w;
	m_f = p.m_f;
	m_w = p.m_w;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = X_h(2).*rep_1;
	rep_4 = X_h(3).*rep_2;
	rep_5 = cos(U(2));
	rep_6 = sin(U(2));
	rep_7 = cos(Lambda);
	rep_8 = rep_1.*rep_7;
	rep_9 = rep_2.*rep_6;
	rep_10 = rep_5.*rep_8;
	rep_11 = sin(Lambda);
	rep_12 = X_f(1).*rep_11;
	rep_13 = rep_1.*rep_11.^2;
	rep_14 = g.*m_f;
	rep_15 = cos(U(3));
	rep_16 = sin(U(3));
	rep_17 = rep_15.*rep_8 + rep_16.*rep_2;
	%% create output vector
	out = -g.*m_w.*(X_w(2).*rep_1 + X_w(3).*rep_2) - rep_14.*(-X_f(2).*(rep_13 + rep_17.*rep_7) + X_f(3).*(rep_15.*rep_2 - rep_16.*rep_8) + rep_12.*(rep_17 - rep_8) - rep_3 + rep_4) - rep_14.*(X_f(2).*(rep_13 + rep_7.*(rep_10 - rep_9)) + X_f(3).*(rep_2.*rep_5 + rep_6.*rep_8) + rep_12.*(-rep_10 + rep_8 + rep_9) + rep_3 + rep_4);
end