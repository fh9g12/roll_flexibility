function out = get_KE(p,U)
	%GET_KE Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:35 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	m_h = p.m_h;
	x_s = p.x_s;
	b_i = p.b_i;
	I_f = p.I_f;
	I_s = p.I_s;
	X_h = p.X_h;
	X_f = p.X_f;
	y_s = p.y_s;
	c_b = p.c_b;
	m_f = p.m_f;
	m_s = p.m_s;
	I_h = p.I_h;
	y_h = p.y_h;
	Lambda = p.Lambda;
	rho_b = p.rho_b;
	%% create common groups
	rep_1 = c_b.*rho_b;
	rep_2 = rep_1.*U(8);
	rep_3 = b_i.^7.*rep_1;
	rep_4 = b_i.^5;
	rep_5 = c_b.^3.*rho_b;
	rep_6 = X_h(2).^2;
	rep_7 = rep_6.*U(7);
	rep_8 = X_h(2).^3.*U(8);
	rep_9 = X_h(2).^4.*U(9);
	rep_10 = X_h(1).*X_h(2).*U(10);
	rep_11 = X_h(1).*rep_6.*U(11);
	rep_12 = y_s(1).^2;
	rep_13 = rep_12.*U(7);
	rep_14 = y_s(1).^3.*U(8);
	rep_15 = y_s(1).^4.*U(9);
	rep_16 = x_s.*U(10);
	rep_17 = y_s(1).*rep_16;
	rep_18 = x_s.*U(11);
	rep_19 = rep_12.*rep_18;
	rep_20 = y_s(2).^2;
	rep_21 = rep_20.*U(7);
	rep_22 = y_s(2).^3.*U(8);
	rep_23 = y_s(2).^4.*U(9);
	rep_24 = y_s(2).*rep_16;
	rep_25 = rep_18.*rep_20;
	rep_26 = y_s(3).^2;
	rep_27 = rep_26.*U(7);
	rep_28 = y_s(3).^3.*U(8);
	rep_29 = y_s(3).^4.*U(9);
	rep_30 = y_s(3).*rep_16;
	rep_31 = rep_18.*rep_26;
	rep_32 = X_h(2).*(X_h(2).*U(5) + U(4));
	rep_33 = X_h(2).*(X_h(2).*U(11) + U(10));
	rep_34 = rep_33.*sin(rep_32).^2;
	rep_35 = rep_33.*cos(rep_32).^2;
	rep_36 = y_s(1).*(y_s(1).*U(5) + U(4));
	rep_37 = y_s(1).*(y_s(1).*U(11) + U(10));
	rep_38 = rep_37.*sin(rep_36).^2;
	rep_39 = rep_37.*cos(rep_36).^2;
	rep_40 = y_s(2).*(y_s(2).*U(5) + U(4));
	rep_41 = y_s(2).*(y_s(2).*U(11) + U(10));
	rep_42 = rep_41.*sin(rep_40).^2;
	rep_43 = rep_41.*cos(rep_40).^2;
	rep_44 = y_s(3).*(y_s(3).*U(5) + U(4));
	rep_45 = y_s(3).*(y_s(3).*U(11) + U(10));
	rep_46 = rep_45.*sin(rep_44).^2;
	rep_47 = rep_45.*cos(rep_44).^2;
	rep_48 = sin(U(6));
	rep_49 = 2*y_h;
	rep_50 = y_h.^2;
	rep_51 = 3*rep_50;
	rep_52 = 4*y_h.^3;
	rep_53 = rep_49.*U(1) + rep_51.*U(2) + rep_52.*U(3);
	rep_54 = sin(rep_53);
	rep_55 = rep_48.*rep_54;
	rep_56 = cos(U(6));
	rep_57 = cos(Lambda);
	rep_58 = cos(rep_53);
	rep_59 = rep_57.*rep_58;
	rep_60 = rep_56.*rep_59;
	rep_61 = rep_49.*U(7) + rep_51.*U(8) + rep_52.*U(9);
	rep_62 = rep_56.*rep_58;
	rep_63 = rep_55.*rep_57;
	rep_64 = rep_55.*U(12) + rep_60.*U(12) - rep_61.*rep_62 - rep_61.*rep_63;
	rep_65 = X_f(3).*rep_64;
	rep_66 = sin(Lambda);
	rep_67 = rep_54.*rep_56;
	rep_68 = rep_58.*rep_61;
	rep_69 = rep_54.*rep_61;
	rep_70 = rep_66.*(rep_48.*rep_57.*rep_58.*U(12) - rep_48.*rep_68 + rep_54.*rep_56.*rep_57.*rep_61 - rep_57.*rep_69 - rep_67.*U(12));
	rep_71 = X_f(1).*rep_70;
	rep_72 = rep_57.^2;
	rep_73 = rep_48.*rep_58;
	rep_74 = rep_73.*U(12);
	rep_75 = rep_66.^2;
	rep_76 = rep_61.*rep_67;
	rep_77 = rep_48.*rep_57.*rep_58.*rep_61 + rep_54.*rep_56.*rep_57.*U(12) - rep_69.*rep_75 - rep_72.*rep_74 - rep_72.*rep_76;
	rep_78 = X_f(2).*rep_77;
	rep_79 = rep_64.*rep_66.*(-rep_55 + rep_57.*rep_58 - rep_60);
	rep_80 = y_h.*U(4) + rep_50.*U(5);
	rep_81 = cos(rep_80);
	rep_82 = rep_66.*rep_81;
	rep_83 = sin(rep_80);
	rep_84 = rep_57.*rep_83;
	rep_85 = rep_54.*rep_82 - rep_84;
	rep_86 = rep_66.*rep_83;
	rep_87 = rep_57.*rep_81;
	rep_88 = rep_54.*rep_87;
	rep_89 = rep_86 + rep_88;
	rep_90 = y_h.*U(10) + rep_50.*U(11);
	rep_91 = rep_82.*rep_90;
	rep_92 = rep_54.*rep_84;
	rep_93 = rep_68.*rep_87 - rep_90.*rep_92 + rep_91;
	rep_94 = rep_48.*rep_93 + rep_56.*rep_89.*U(12) - rep_62.*rep_83.*rep_90 - rep_74.*rep_81 - rep_76.*rep_81;
	rep_95 = rep_94.*(-rep_56.*rep_66.*rep_89 + rep_57.*rep_85 + rep_73.*rep_82);
	rep_96 = rep_54.*rep_86 + rep_87;
	rep_97 = rep_82 - rep_92;
	rep_98 = rep_56.*rep_97;
	rep_99 = rep_86.*rep_90;
	rep_100 = -rep_68.*rep_84 - rep_88.*rep_90 - rep_99;
	rep_101 = -rep_100.*rep_48 + rep_56.*rep_58.*rep_81.*rep_90 - rep_74.*rep_83 - rep_76.*rep_83 - rep_98.*U(12);
	rep_102 = rep_101.*(rep_57.*rep_96 + rep_66.*rep_98 + rep_73.*rep_86);
	rep_103 = X_f(3).*rep_101;
	rep_104 = rep_62.*U(12);
	rep_105 = rep_55.*rep_61;
	rep_106 = rep_48.*rep_97;
	rep_107 = rep_66.*U(12);
	rep_108 = rep_84.*rep_90;
	rep_109 = -rep_108 + rep_54.*rep_91 + rep_68.*rep_86;
	rep_110 = rep_56.*rep_66;
	rep_111 = rep_100.*rep_110 + rep_104.*rep_86 - rep_105.*rep_86 - rep_106.*rep_107 + rep_109.*rep_57 + rep_73.*rep_91;
	rep_112 = X_f(1).*rep_111;
	rep_113 = rep_87.*rep_90;
	rep_114 = rep_57.*U(12);
	rep_115 = rep_56.*rep_57;
	rep_116 = -rep_100.*rep_115 - rep_104.*rep_84 + rep_105.*rep_84 + rep_106.*rep_114 + rep_109.*rep_66 - rep_113.*rep_73;
	rep_117 = X_f(2).*rep_116;
	rep_118 = rep_50.*(y_h.*U(8) + rep_50.*U(9) + U(7));
	rep_119 = X_f(3).*rep_94;
	rep_120 = rep_48.*rep_89;
	rep_121 = -rep_113 - rep_54.*rep_99 + rep_58.*rep_61.*rep_66.*rep_81;
	rep_122 = -rep_104.*rep_87 + rep_105.*rep_87 + rep_108.*rep_73 - rep_114.*rep_120 + rep_115.*rep_93 + rep_121.*rep_66;
	rep_123 = X_f(2).*rep_122;
	rep_124 = rep_104.*rep_82 - rep_105.*rep_82 + rep_107.*rep_120 - rep_110.*rep_93 + rep_121.*rep_57 - rep_73.*rep_99;
	rep_125 = X_f(1).*rep_124;
	rep_126 = rep_77.*(rep_48.*rep_59 - rep_67);
	rep_127 = rep_122.*(rep_120 + rep_62.*rep_81);
	rep_128 = rep_116.*(-rep_106 + rep_56.*rep_58.*rep_83);
	rep_129 = rep_70.*(rep_58.*rep_75 + rep_62.*rep_72 + rep_63);
	rep_130 = rep_124.*(rep_115.*rep_89 + rep_66.*rep_85 - rep_73.*rep_87);
	rep_131 = rep_111.*(-rep_115.*rep_97 + rep_66.*rep_96 - rep_73.*rep_84);
	%% create output vector
	out = b_i.^9.*rep_1.*U(9).^2/18 + b_i.^8.*rep_2.*U(9)/8 + b_i.^6.*rep_2.*U(7)/6 + b_i.^4.*rep_5.*U(11).*U(10)/48 + b_i.^3.*rep_5.*U(10).^2/72 + m_f.*(rep_103/2 + rep_112/2 + rep_117/2).*(rep_103 + rep_112 + rep_117) + m_f.*(rep_65/2 + rep_71/2 + rep_78/2).*(rep_65 + rep_71 + rep_78) + m_f.*(rep_118/2 + rep_119/2 + rep_123/2 + rep_125/2).*(rep_118 + rep_119 + rep_123 + rep_125) + m_h.*(-rep_10 - rep_11 + rep_7 + rep_8 + rep_9).*(-rep_10/2 - rep_11/2 + rep_7/2 + rep_8/2 + rep_9/2) + m_s.*(rep_13/2 + rep_14/2 + rep_15/2 - rep_17/2 - rep_19/2).*(rep_13 + rep_14 + rep_15 - rep_17 - rep_19) + m_s.*(rep_21/2 + rep_22/2 + rep_23/2 - rep_24/2 - rep_25/2).*(rep_21 + rep_22 + rep_23 - rep_24 - rep_25) + m_s.*(rep_27/2 + rep_28/2 + rep_29/2 - rep_30/2 - rep_31/2).*(rep_27 + rep_28 + rep_29 - rep_30 - rep_31) + I_f(1).*(rep_126/2 + rep_127/2 + rep_128/2).*(rep_126 + rep_127 + rep_128) + I_f(2).*(rep_102/2 + rep_79/2 + rep_95/2).*(rep_102 + rep_79 + rep_95) + I_f(3).*(rep_129/2 + rep_130/2 + rep_131/2).*(rep_129 + rep_130 + rep_131) + I_h(2).*(rep_34/2 + rep_35/2).*(rep_34 + rep_35) + I_s(2).*(rep_38/2 + rep_39/2).*(rep_38 + rep_39) + I_s(2).*(rep_42/2 + rep_43/2).*(rep_42 + rep_43) + I_s(2).*(rep_46/2 + rep_47/2).*(rep_46 + rep_47) + rep_1.*rep_4.*U(7).^2/10 + rep_3.*U(7).*U(9)/7 + rep_3.*U(8).^2/14 + rep_4.*rep_5.*U(11).^2/120;
end