function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:35 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	K = p.K;
	m_h = p.m_h;
	GJ = p.GJ;
	x_s = p.x_s;
	b_i = p.b_i;
	g_v = p.g_v;
	EI = p.EI;
	X_h = p.X_h;
	X_f = p.X_f;
	y_s = p.y_s;
	c_b = p.c_b;
	m_f = p.m_f;
	m_s = p.m_s;
	k_h = p.k_h;
	g = p.g;
	y_h = p.y_h;
	Lambda = p.Lambda;
	rho_b = p.rho_b;
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
	rep_24 = cos(U(6));
	rep_25 = y_h.^2;
	rep_26 = y_h.^3.*rep_15 + y_h.*rep_11 + rep_14.*rep_25;
	rep_27 = sin(rep_26);
	rep_28 = sin(U(6));
	rep_29 = cos(Lambda);
	rep_30 = cos(rep_26);
	rep_31 = rep_29.*rep_30;
	rep_32 = sin(Lambda);
	rep_33 = rep_27.*rep_28;
	rep_34 = rep_24.*rep_30;
	rep_35 = y_h.*U(4) + rep_25.*U(5);
	rep_36 = sin(rep_35);
	rep_37 = cos(rep_35);
	rep_38 = rep_32.*rep_37;
	rep_39 = rep_29.*rep_36;
	rep_40 = -rep_27.*rep_39 + rep_38;
	rep_41 = rep_32.*rep_36;
	rep_42 = rep_28.*rep_30;
	rep_43 = rep_29.*rep_37;
	rep_44 = rep_27.*rep_41 + rep_43;
	rep_45 = rep_24.*rep_40;
	rep_46 = rep_27.*rep_43 + rep_41;
	rep_47 = rep_27.*rep_38 - rep_39;
	rep_48 = rep_24.*rep_46;
	%% create output vector
	out = 72*EI.*rep_1.*U(3).^2/5 + b_i.*(2*EI.*U(1).^2 + GJ.*U(4).^2/2 + rep_11.*rep_12) + k_h.*U(6).^2/2 + m_f.*(-rep_16.*(X_f(1).*(rep_29.*rep_44 + rep_32.*rep_45 + rep_41.*rep_42) + X_f(2).*(-rep_29.*rep_45 + rep_32.*rep_44 - rep_39.*rep_42) + X_f(3).*(rep_24.*rep_30.*rep_36 - rep_28.*rep_40)) - rep_3.*(y_h + X_f(1).*rep_32.*(-rep_24.*rep_31 + rep_29.*rep_30 - rep_33) + X_f(2).*(rep_29.^2.*rep_34 + rep_29.*rep_33 + rep_30.*rep_32.^2) + X_f(3).*(-rep_24.*rep_27 + rep_28.*rep_31)) - rep_6.*(X_f(1).*(rep_29.*rep_47 - rep_32.*rep_48 + rep_38.*rep_42) + X_f(2).*(rep_29.*rep_48 + rep_32.*rep_47 - rep_42.*rep_43) + X_f(3).*(rep_28.*rep_46 + rep_34.*rep_37) + rep_25.*(y_h.*U(2) + rep_25.*U(3) + U(1)))) + m_h.*(-X_h(1).*rep_16 - X_h(2).*rep_3 - rep_6.*(-X_h(1).*X_h(2).*U(4) - X_h(1).*rep_17.*U(5) + X_h(2).^4.*U(3) + X_h(2).^3.*U(2) + rep_17.*U(1))) + m_s.*(-y_s(1).*rep_3 - rep_18 - rep_6.*(y_s(1).^4.*U(3) + y_s(1).^3.*U(2) - y_s(1).*rep_20 - rep_19.*rep_21 + rep_19.*U(1))) + m_s.*(-y_s(2).*rep_3 - rep_18 - rep_6.*(y_s(2).^4.*U(3) + y_s(2).^3.*U(2) - y_s(2).*rep_20 - rep_21.*rep_22 + rep_22.*U(1))) + m_s.*(-y_s(3).*rep_3 - rep_18 - rep_6.*(y_s(3).^4.*U(3) + y_s(3).^3.*U(2) - y_s(3).*rep_20 - rep_21.*rep_23 + rep_23.*U(1))) - rep_1.*rep_7.*U(3)/5 - rep_2.*rep_3.*rep_4/2 + rep_2.*(GJ.*U(4).*U(5) + rep_10.*rep_11 + rep_12.*rep_14 + rep_13.*U(1).*U(2)) - rep_5.*rep_7.*U(1)/3 + rep_5.*(2*GJ.*U(5).^2/3 + 4*rep_10.*U(2) + rep_12.*rep_15 + rep_13.*U(2).^2 + 8*rep_9.*U(1)) - rep_7.*rep_8.*U(2)/4 + rep_8.*(6*rep_10.*U(3) + 18*rep_9.*U(2));
end