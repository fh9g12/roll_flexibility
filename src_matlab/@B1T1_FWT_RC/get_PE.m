function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:39 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	X_h = p.X_h;
	m_s = p.m_s;
	g_v = p.g_v;
	m_h = p.m_h;
	g = p.g;
	X_f = p.X_f;
	EI = p.EI;
	k_h = p.k_h;
	y_s = p.y_s;
	m_f = p.m_f;
	c_b = p.c_b;
	rho_b = p.rho_b;
	GJ = p.GJ;
	Lambda = p.Lambda;
	y_h = p.y_h;
	K = p.K;
	x_s = p.x_s;
	b_i = p.b_i;
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
	rep_14 = cos(U(4));
	rep_15 = y_h.*U(3);
	rep_16 = sin(rep_15);
	rep_17 = y_h.*U(2);
	rep_18 = 2*rep_17;
	rep_19 = cos(rep_18);
	rep_20 = sin(U(4));
	rep_21 = sin(Lambda);
	rep_22 = cos(rep_15);
	rep_23 = rep_21.*rep_22;
	rep_24 = sin(rep_18);
	rep_25 = cos(Lambda);
	rep_26 = rep_16.*rep_25;
	rep_27 = rep_23 - rep_24.*rep_26;
	rep_28 = rep_16.*rep_21;
	rep_29 = rep_19.*rep_20;
	rep_30 = rep_22.*rep_25;
	rep_31 = rep_24.*rep_28 + rep_30;
	rep_32 = rep_14.*rep_27;
	rep_33 = rep_1.*rep_19;
	rep_34 = -rep_22.*rep_33 + rep_24.*rep_4;
	rep_35 = rep_19.*rep_4;
	rep_36 = rep_24.*rep_30 + rep_28;
	rep_37 = rep_1.*rep_36 + rep_25.*rep_35;
	rep_38 = rep_20.*rep_34;
	rep_39 = rep_23.*rep_24 - rep_26;
	rep_40 = rep_1.*rep_39 + rep_21.*rep_35;
	rep_41 = rep_14.*rep_37;
	rep_42 = rep_1.*rep_24 + rep_22.*rep_35;
	rep_43 = -rep_25.*rep_33 + rep_36.*rep_4;
	rep_44 = -rep_21.*rep_33 + rep_39.*rep_4;
	%% create output vector
	out = b_i.^3.*(-rep_1.*rep_5.*rep_6 + rep_2.*rep_4.*rep_6) + b_i.^2.*(-rep_1.*rep_2.*rep_3 - rep_3.*rep_4.*rep_5) + b_i.*(2*EI.*U(2).^2 + GJ.*U(3).^2/2 + 2*K.*U(2).*U(3)) + k_h.*U(4).^2/2 + m_f.*(-rep_2.*(y_h.*(rep_1 - rep_17.*rep_4) + X_f(1).*(rep_14.*rep_21.*rep_43 - rep_20.*rep_21.*rep_42 - rep_25.*rep_44) + X_f(2).*(-rep_14.*rep_25.*rep_43 + rep_20.*rep_25.*rep_42 - rep_21.*rep_44) + X_f(3).*(-rep_14.*rep_42 - rep_20.*rep_43)) - rep_5.*(y_h.*(rep_1.*rep_17 + rep_4) + X_f(1).*(-rep_21.*rep_38 - rep_21.*rep_41 + rep_25.*rep_40) + X_f(2).*(rep_21.*rep_40 + rep_25.*rep_38 + rep_25.*rep_41) + X_f(3).*(-rep_14.*rep_34 + rep_20.*rep_37)) - rep_7.*(X_f(1).*(rep_21.*rep_32 + rep_25.*rep_31 + rep_28.*rep_29) + X_f(2).*(rep_21.*rep_31 - rep_25.*rep_32 - rep_26.*rep_29) + X_f(3).*(rep_14.*rep_16.*rep_19 - rep_20.*rep_27))) + m_h.*(-X_h(1).*rep_7 - rep_2.*(X_h(2).*rep_1 - rep_4.*rep_8) - rep_5.*(X_h(2).*rep_4 + rep_1.*rep_8)) + m_s.*(-rep_2.*(y_s(1).*rep_1 - rep_11.*rep_4) - rep_5.*(y_s(1).*rep_4 + rep_1.*rep_11) - rep_9) + m_s.*(-rep_2.*(y_s(2).*rep_1 - rep_12.*rep_4) - rep_5.*(y_s(2).*rep_4 + rep_1.*rep_12) - rep_9) + m_s.*(-rep_2.*(y_s(3).*rep_1 - rep_13.*rep_4) - rep_5.*(y_s(3).*rep_4 + rep_1.*rep_13) - rep_9);
end