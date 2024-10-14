function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_f = p.X_f;
	g = p.g;
	m_s = p.m_s;
	rho_b = p.rho_b;
	GJ = p.GJ;
	X_h = p.X_h;
	b_i = p.b_i;
	y_s = p.y_s;
	y_h = p.y_h;
	K = p.K;
	EI = p.EI;
	m_f = p.m_f;
	x_s = p.x_s;
	m_h = p.m_h;
	g_v = p.g_v;
	c_b = p.c_b;
	%% create common groups
	rep_1 = b_i.^5;
	rep_2 = b_i.^2;
	rep_3 = g.*g_v(2);
	rep_4 = c_b.*rho_b;
	rep_5 = b_i.^3;
	rep_6 = g.*g_v(3);
	rep_7 = rep_4.*rep_6;
	rep_8 = b_i.^4;
	rep_9 = EI.*U(3);
	rep_10 = K.*U(5);
	rep_11 = 2*U(1);
	rep_12 = K.*U(4);
	rep_13 = 6*EI;
	rep_14 = 3*U(2);
	rep_15 = 4*U(3);
	rep_16 = g.*g_v(1);
	rep_17 = X_h(2).^2;
	rep_18 = x_s.*rep_16;
	rep_19 = y_s(1).^2;
	rep_20 = x_s.*U(4);
	rep_21 = x_s.*U(5);
	rep_22 = y_s(2).^2;
	rep_23 = y_s(3).^2;
	rep_24 = y_h.^2;
	rep_25 = y_h.^3.*rep_15 + y_h.*rep_11 + rep_14.*rep_24;
	rep_26 = cos(rep_25);
	rep_27 = sin(rep_25);
	rep_28 = y_h.*U(4) + rep_24.*U(5);
	rep_29 = cos(rep_28);
	rep_30 = sin(rep_28);
	rep_31 = X_f(2).*rep_27;
	rep_32 = X_f(3).*rep_26;
	%% create output vector
	out = 72*EI.*rep_1.*U(3).^2/5 + b_i.*(2*EI.*U(1).^2 + GJ.*U(4).^2/2 + rep_11.*rep_12) + m_f.*(-rep_16.*(X_f(1).*rep_29 + rep_30.*rep_31 + rep_30.*rep_32) - rep_3.*(y_h + X_f(2).*rep_26 - X_f(3).*rep_27) - rep_6.*(-X_f(1).*rep_30 + rep_24.*(y_h.*U(2) + rep_24.*U(3) + U(1)) + rep_29.*rep_31 + rep_29.*rep_32)) + m_h.*(-X_h(1).*rep_16 - X_h(2).*rep_3 - rep_6.*(-X_h(1).*X_h(2).*U(4) - X_h(1).*rep_17.*U(5) + X_h(2).^4.*U(3) + X_h(2).^3.*U(2) + rep_17.*U(1))) + m_s.*(-y_s(1).*rep_3 - rep_18 - rep_6.*(y_s(1).^4.*U(3) + y_s(1).^3.*U(2) - y_s(1).*rep_20 - rep_19.*rep_21 + rep_19.*U(1))) + m_s.*(-y_s(2).*rep_3 - rep_18 - rep_6.*(y_s(2).^4.*U(3) + y_s(2).^3.*U(2) - y_s(2).*rep_20 - rep_21.*rep_22 + rep_22.*U(1))) + m_s.*(-y_s(3).*rep_3 - rep_18 - rep_6.*(y_s(3).^4.*U(3) + y_s(3).^3.*U(2) - y_s(3).*rep_20 - rep_21.*rep_23 + rep_23.*U(1))) - rep_1.*rep_7.*U(3)/5 - rep_2.*rep_3.*rep_4/2 + rep_2.*(GJ.*U(4).*U(5) + rep_10.*rep_11 + rep_12.*rep_14 + rep_13.*U(1).*U(2)) - rep_5.*rep_7.*U(1)/3 + rep_5.*(2*GJ.*U(5).^2/3 + 4*rep_10.*U(2) + rep_12.*rep_15 + rep_13.*U(2).^2 + 8*rep_9.*U(1)) - rep_7.*rep_8.*U(2)/4 + rep_8.*(6*rep_10.*U(3) + 18*rep_9.*U(2));
end