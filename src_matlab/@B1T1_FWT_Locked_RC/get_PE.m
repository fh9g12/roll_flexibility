function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:54 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	m_h = p.m_h;
	g = p.g;
	g_v = p.g_v;
	m_f = p.m_f;
	rho_b = p.rho_b;
	m_s = p.m_s;
	X_h = p.X_h;
	y_s = p.y_s;
	GJ = p.GJ;
	b_i = p.b_i;
	X_f = p.X_f;
	x_s = p.x_s;
	c_b = p.c_b;
	EI = p.EI;
	y_h = p.y_h;
	K = p.K;
	%% create common groups
	rep_1 = cos(U(1));
	rep_2 = g.*g_v(2);
	rep_3 = c_b.*rho_b/2;
	rep_4 = sin(U(1));
	rep_5 = g.*g_v(3);
	rep_6 = c_b.*rho_b.*U(2)/3;
	rep_7 = g.*g_v(1);
	rep_8 = -X_h(1).*X_h(2).*U(3) + X_h(2).^2.*U(2);
	rep_9 = x_s.*rep_7;
	rep_10 = x_s.*U(3);
	rep_11 = y_s(1).^2.*U(2) - y_s(1).*rep_10;
	rep_12 = y_s(2).^2.*U(2) - y_s(2).*rep_10;
	rep_13 = y_s(3).^2.*U(2) - y_s(3).*rep_10;
	rep_14 = y_h.*U(3);
	rep_15 = cos(rep_14);
	rep_16 = sin(rep_14);
	rep_17 = y_h.*U(2);
	rep_18 = 2*rep_17;
	rep_19 = sin(rep_18);
	rep_20 = cos(rep_18);
	rep_21 = X_f(1).*rep_16;
	rep_22 = rep_20.*rep_4;
	rep_23 = rep_1.*rep_19;
	rep_24 = rep_19.*rep_4;
	%% create output vector
	out = b_i.^3.*(-rep_1.*rep_5.*rep_6 + rep_2.*rep_4.*rep_6) + b_i.^2.*(-rep_1.*rep_2.*rep_3 - rep_3.*rep_4.*rep_5) + b_i.*(2*EI.*U(2).^2 + GJ.*U(3).^2/2 + 2*K.*U(2).*U(3)) + m_f.*(-rep_2.*(y_h.*(rep_1 - rep_17.*rep_4) + X_f(2).*(rep_1.*rep_20 - rep_15.*rep_24) + X_f(3).*(-rep_15.*rep_22 - rep_23) + rep_21.*rep_4) - rep_5.*(y_h.*(rep_1.*rep_17 + rep_4) + X_f(2).*(rep_15.*rep_23 + rep_22) + X_f(3).*(rep_1.*rep_15.*rep_20 - rep_24) - rep_1.*rep_21) - rep_7.*(X_f(1).*rep_15 + X_f(2).*rep_16.*rep_19 + X_f(3).*rep_16.*rep_20)) + m_h.*(-X_h(1).*rep_7 - rep_2.*(X_h(2).*rep_1 - rep_4.*rep_8) - rep_5.*(X_h(2).*rep_4 + rep_1.*rep_8)) + m_s.*(-rep_2.*(y_s(1).*rep_1 - rep_11.*rep_4) - rep_5.*(y_s(1).*rep_4 + rep_1.*rep_11) - rep_9) + m_s.*(-rep_2.*(y_s(2).*rep_1 - rep_12.*rep_4) - rep_5.*(y_s(2).*rep_4 + rep_1.*rep_12) - rep_9) + m_s.*(-rep_2.*(y_s(3).*rep_1 - rep_13.*rep_4) - rep_5.*(y_s(3).*rep_4 + rep_1.*rep_13) - rep_9);
end