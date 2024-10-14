function out = get_PE(p,U)
	%GET_PE Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:45 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	X_h = p.X_h;
	Lambda = p.Lambda;
	g_v = p.g_v;
	X_f = p.X_f;
	GJ = p.GJ;
	EI = p.EI;
	x_s = p.x_s;
	y_s = p.y_s;
	m_h = p.m_h;
	k_h = p.k_h;
	y_h = p.y_h;
	m_f = p.m_f;
	c_b = p.c_b;
	m_s = p.m_s;
	g = p.g;
	rho_b = p.rho_b;
	K = p.K;
	%% create common groups
	rep_1 = b_i.^5;
	rep_2 = b_i.^4;
	rep_3 = EI.*U(4);
	rep_4 = K.*U(6);
	rep_5 = 2*U(2);
	rep_6 = K.*U(5);
	rep_7 = b_i.^2;
	rep_8 = cos(U(1));
	rep_9 = g.*g_v(2);
	rep_10 = c_b.*rho_b/2;
	rep_11 = sin(U(1));
	rep_12 = g.*g_v(3);
	rep_13 = b_i.^3;
	rep_14 = c_b.*rho_b;
	rep_15 = rep_14.*U(2)/3;
	rep_16 = rep_11.*rep_9;
	rep_17 = rep_12.*rep_8;
	rep_18 = U(3)/4;
	rep_19 = rep_14.*rep_16;
	rep_20 = rep_14.*rep_17;
	rep_21 = U(4)/5;
	rep_22 = 6*EI;
	rep_23 = 3*U(3);
	rep_24 = 4*U(4);
	rep_25 = g.*g_v(1);
	rep_26 = X_h(2).^2;
	rep_27 = -X_h(1).*X_h(2).*U(5) - X_h(1).*rep_26.*U(6) + X_h(2).^4.*U(4) + X_h(2).^3.*U(3) + rep_26.*U(2);
	rep_28 = x_s.*rep_25;
	rep_29 = y_s(1).^2;
	rep_30 = x_s.*U(5);
	rep_31 = x_s.*U(6);
	rep_32 = y_s(1).^4.*U(4) + y_s(1).^3.*U(3) - y_s(1).*rep_30 - rep_29.*rep_31 + rep_29.*U(2);
	rep_33 = y_s(2).^2;
	rep_34 = y_s(2).^4.*U(4) + y_s(2).^3.*U(3) - y_s(2).*rep_30 - rep_31.*rep_33 + rep_33.*U(2);
	rep_35 = y_s(3).^2;
	rep_36 = y_s(3).^4.*U(4) + y_s(3).^3.*U(3) - y_s(3).*rep_30 - rep_31.*rep_35 + rep_35.*U(2);
	rep_37 = cos(U(7));
	rep_38 = y_h.^2;
	rep_39 = y_h.*U(5) + rep_38.*U(6);
	rep_40 = sin(rep_39);
	rep_41 = y_h.^3.*rep_24 + y_h.*rep_5 + rep_23.*rep_38;
	rep_42 = cos(rep_41);
	rep_43 = sin(U(7));
	rep_44 = sin(Lambda);
	rep_45 = cos(rep_39);
	rep_46 = rep_44.*rep_45;
	rep_47 = sin(rep_41);
	rep_48 = cos(Lambda);
	rep_49 = rep_40.*rep_48;
	rep_50 = rep_46 - rep_47.*rep_49;
	rep_51 = rep_40.*rep_44;
	rep_52 = rep_42.*rep_43;
	rep_53 = rep_45.*rep_48;
	rep_54 = rep_47.*rep_51 + rep_53;
	rep_55 = rep_37.*rep_50;
	rep_56 = y_h.*(y_h.*U(3) + rep_38.*U(4) + U(2));
	rep_57 = rep_42.*rep_8;
	rep_58 = rep_11.*rep_47 - rep_45.*rep_57;
	rep_59 = rep_11.*rep_42;
	rep_60 = rep_47.*rep_53 + rep_51;
	rep_61 = rep_48.*rep_59 + rep_60.*rep_8;
	rep_62 = rep_43.*rep_58;
	rep_63 = rep_46.*rep_47 - rep_49;
	rep_64 = rep_44.*rep_59 + rep_63.*rep_8;
	rep_65 = rep_37.*rep_61;
	rep_66 = rep_45.*rep_59 + rep_47.*rep_8;
	rep_67 = rep_11.*rep_60 - rep_48.*rep_57;
	rep_68 = rep_11.*rep_63 - rep_44.*rep_57;
	%% create output vector
	out = 72*EI.*rep_1.*U(4).^2/5 + b_i.*(2*EI.*U(2).^2 + GJ.*U(5).^2/2 + rep_5.*rep_6) + k_h.*U(7).^2/2 + m_f.*(-rep_12.*(y_h.*(rep_11 + rep_56.*rep_8) + X_f(1).*(-rep_44.*rep_62 - rep_44.*rep_65 + rep_48.*rep_64) + X_f(2).*(rep_44.*rep_64 + rep_48.*rep_62 + rep_48.*rep_65) + X_f(3).*(-rep_37.*rep_58 + rep_43.*rep_61)) - rep_25.*(X_f(1).*(rep_44.*rep_55 + rep_48.*rep_54 + rep_51.*rep_52) + X_f(2).*(rep_44.*rep_54 - rep_48.*rep_55 - rep_49.*rep_52) + X_f(3).*(rep_37.*rep_40.*rep_42 - rep_43.*rep_50)) - rep_9.*(-y_h.*(rep_11.*rep_56 - rep_8) + X_f(1).*(rep_37.*rep_44.*rep_67 - rep_43.*rep_44.*rep_66 - rep_48.*rep_68) + X_f(2).*(-rep_37.*rep_48.*rep_67 + rep_43.*rep_48.*rep_66 - rep_44.*rep_68) + X_f(3).*(-rep_37.*rep_66 - rep_43.*rep_67))) + m_h.*(-X_h(1).*rep_25 - rep_12.*(X_h(2).*rep_11 + rep_27.*rep_8) - rep_9.*(X_h(2).*rep_8 - rep_11.*rep_27)) + m_s.*(-rep_12.*(y_s(1).*rep_11 + rep_32.*rep_8) - rep_28 - rep_9.*(y_s(1).*rep_8 - rep_11.*rep_32)) + m_s.*(-rep_12.*(y_s(2).*rep_11 + rep_34.*rep_8) - rep_28 - rep_9.*(y_s(2).*rep_8 - rep_11.*rep_34)) + m_s.*(-rep_12.*(y_s(3).*rep_11 + rep_36.*rep_8) - rep_28 - rep_9.*(y_s(3).*rep_8 - rep_11.*rep_36)) + rep_1.*(rep_19.*rep_21 - rep_20.*rep_21) + rep_13.*(rep_15.*rep_16 - rep_15.*rep_17) + rep_13.*(2*GJ.*U(6).^2/3 + rep_22.*U(3).^2 + rep_24.*rep_6 + 8*rep_3.*U(2) + 4*rep_4.*U(3)) + rep_2.*(rep_18.*rep_19 - rep_18.*rep_20) + rep_2.*(18*rep_3.*U(3) + 6*rep_4.*U(4)) + rep_7.*(-rep_10.*rep_11.*rep_12 - rep_10.*rep_8.*rep_9) + rep_7.*(GJ.*U(5).*U(6) + rep_22.*U(2).*U(3) + rep_23.*rep_6 + rep_4.*rep_5);
end