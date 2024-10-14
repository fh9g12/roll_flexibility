function out = get_M(p,U)
	%GET_M Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	I_s = p.I_s;
	y_s = p.y_s;
	I_h = p.I_h;
	m_f = p.m_f;
	X_h = p.X_h;
	m_h = p.m_h;
	m_s = p.m_s;
	rho_b = p.rho_b;
	b_i = p.b_i;
	y_h = p.y_h;
	x_s = p.x_s;
	c_b = p.c_b;
	%% create common groups
	rep_1 = b_i.^5;
	rep_2 = c_b.*rho_b;
	rep_3 = X_h(2).*(X_h(2).*U(5) + U(4));
	rep_4 = sin(rep_3);
	rep_5 = rep_4.^2;
	rep_6 = X_h(2).^4;
	rep_7 = m_h.*rep_6;
	rep_8 = cos(rep_3);
	rep_9 = rep_8.^2;
	rep_10 = y_s(1).*(y_s(1).*U(5) + U(4));
	rep_11 = sin(rep_10);
	rep_12 = rep_11.^2;
	rep_13 = y_s(1).^4;
	rep_14 = m_s.*rep_13;
	rep_15 = cos(rep_10);
	rep_16 = rep_15.^2;
	rep_17 = y_s(2).*(y_s(2).*U(5) + U(4));
	rep_18 = sin(rep_17);
	rep_19 = rep_18.^2;
	rep_20 = y_s(2).^4;
	rep_21 = m_s.*rep_20;
	rep_22 = cos(rep_17);
	rep_23 = rep_22.^2;
	rep_24 = y_s(3).*(y_s(3).*U(5) + U(4));
	rep_25 = sin(rep_24);
	rep_26 = rep_25.^2;
	rep_27 = y_s(3).^4;
	rep_28 = m_s.*rep_27;
	rep_29 = cos(rep_24);
	rep_30 = rep_29.^2;
	rep_31 = y_h.^4;
	rep_32 = y_h.^2;
	rep_33 = y_h.*U(4) + rep_32.*U(5);
	rep_34 = m_f.*sin(rep_33).^2;
	rep_35 = 4*y_h.^3.*U(3) + 2*y_h.*U(1) + 3*rep_32.*U(2);
	rep_36 = sin(rep_35).^2;
	rep_37 = m_f.*cos(rep_33).^2;
	rep_38 = rep_31.*rep_37;
	rep_39 = cos(rep_35).^2;
	rep_40 = m_h.*X_h(2).^5;
	rep_41 = m_s.*y_s(1).^5;
	rep_42 = m_s.*y_s(2).^5;
	rep_43 = m_s.*y_s(3).^5;
	rep_44 = y_h.^5;
	rep_45 = rep_37.*rep_44;
	rep_46 = b_i.^6.*rep_2/6 + rep_12.*rep_41 + rep_16.*rep_41 + rep_19.*rep_42 + rep_23.*rep_42 + rep_26.*rep_43 + rep_30.*rep_43 + rep_34.*rep_44 + rep_36.*rep_45 + rep_39.*rep_45 + rep_40.*rep_5 + rep_40.*rep_9;
	rep_47 = m_h.*X_h(2).^6;
	rep_48 = m_s.*y_s(1).^6;
	rep_49 = m_s.*y_s(2).^6;
	rep_50 = m_s.*y_s(3).^6;
	rep_51 = y_h.^6;
	rep_52 = rep_37.*rep_51;
	rep_53 = b_i.^7.*rep_2/7 + rep_12.*rep_48 + rep_16.*rep_48 + rep_19.*rep_49 + rep_23.*rep_49 + rep_26.*rep_50 + rep_30.*rep_50 + rep_34.*rep_51 + rep_36.*rep_52 + rep_39.*rep_52 + rep_47.*rep_5 + rep_47.*rep_9;
	rep_54 = X_h(2).^2;
	rep_55 = rep_4.*rep_54;
	rep_56 = X_h(2).*rep_5 + X_h(2).*rep_9;
	rep_57 = X_h(1).*rep_4;
	rep_58 = X_h(2).^3;
	rep_59 = -X_h(1).*X_h(2).*U(4) - X_h(1).*rep_54.*U(5) + rep_54.*U(1) + rep_58.*U(2) + rep_6.*U(3);
	rep_60 = -rep_59;
	rep_61 = rep_57 - rep_60.*rep_8;
	rep_62 = -rep_57 - rep_59.*rep_8;
	rep_63 = X_h(2).*rep_8;
	rep_64 = X_h(1).*rep_8;
	rep_65 = rep_4.*rep_59 - rep_64;
	rep_66 = X_h(2).*rep_4;
	rep_67 = rep_62.*rep_63 - rep_65.*rep_66;
	rep_68 = -X_h(1).*X_h(2) - rep_62.*rep_66 - rep_63.*rep_65;
	rep_69 = -rep_4.*rep_68 + rep_56.*rep_61 + rep_67.*rep_8;
	rep_70 = m_h.*rep_69;
	rep_71 = y_s(1).^2;
	rep_72 = rep_11.*rep_71;
	rep_73 = y_s(1).*rep_12 + y_s(1).*rep_16;
	rep_74 = x_s.*rep_11;
	rep_75 = y_s(1).^3;
	rep_76 = -x_s.*y_s(1).*U(4) - x_s.*rep_71.*U(5) + rep_13.*U(3) + rep_71.*U(1) + rep_75.*U(2);
	rep_77 = -rep_76;
	rep_78 = -rep_15.*rep_77 + rep_74;
	rep_79 = -rep_15.*rep_76 - rep_74;
	rep_80 = y_s(1).*rep_15;
	rep_81 = x_s.*rep_15;
	rep_82 = rep_11.*rep_76 - rep_81;
	rep_83 = y_s(1).*rep_11;
	rep_84 = rep_79.*rep_80 - rep_82.*rep_83;
	rep_85 = -x_s.*y_s(1) - rep_79.*rep_83 - rep_80.*rep_82;
	rep_86 = -rep_11.*rep_85 + rep_15.*rep_84 + rep_73.*rep_78;
	rep_87 = m_s.*rep_86;
	rep_88 = y_s(2).^2;
	rep_89 = rep_18.*rep_88;
	rep_90 = y_s(2).*rep_19 + y_s(2).*rep_23;
	rep_91 = x_s.*rep_18;
	rep_92 = y_s(2).^3;
	rep_93 = -x_s.*y_s(2).*U(4) - x_s.*rep_88.*U(5) + rep_20.*U(3) + rep_88.*U(1) + rep_92.*U(2);
	rep_94 = -rep_93;
	rep_95 = -rep_22.*rep_94 + rep_91;
	rep_96 = -rep_22.*rep_93 - rep_91;
	rep_97 = y_s(2).*rep_22;
	rep_98 = x_s.*rep_22;
	rep_99 = rep_18.*rep_93 - rep_98;
	rep_100 = y_s(2).*rep_18;
	rep_101 = -rep_100.*rep_99 + rep_96.*rep_97;
	rep_102 = -x_s.*y_s(2) - rep_100.*rep_96 - rep_97.*rep_99;
	rep_103 = rep_101.*rep_22 - rep_102.*rep_18 + rep_90.*rep_95;
	rep_104 = m_s.*rep_103;
	rep_105 = y_s(3).^2;
	rep_106 = rep_105.*rep_25;
	rep_107 = y_s(3).*rep_26 + y_s(3).*rep_30;
	rep_108 = x_s.*rep_25;
	rep_109 = y_s(3).^3;
	rep_110 = -x_s.*y_s(3).*U(4) - x_s.*rep_105.*U(5) + rep_105.*U(1) + rep_109.*U(2) + rep_27.*U(3);
	rep_111 = -rep_110;
	rep_112 = rep_108 - rep_111.*rep_29;
	rep_113 = -rep_108 - rep_110.*rep_29;
	rep_114 = y_s(3).*rep_29;
	rep_115 = x_s.*rep_29;
	rep_116 = rep_110.*rep_25 - rep_115;
	rep_117 = y_s(3).*rep_25;
	rep_118 = rep_113.*rep_114 - rep_116.*rep_117;
	rep_119 = -x_s.*y_s(3) - rep_113.*rep_117 - rep_114.*rep_116;
	rep_120 = rep_107.*rep_112 + rep_118.*rep_29 - rep_119.*rep_25;
	rep_121 = m_s.*rep_120;
	rep_122 = -rep_4.*rep_60 - rep_64;
	rep_123 = rep_122.*rep_56 + rep_4.*rep_67 + rep_68.*rep_8;
	rep_124 = -rep_11.*rep_77 - rep_81;
	rep_125 = rep_11.*rep_84 + rep_124.*rep_73 + rep_15.*rep_85;
	rep_126 = -rep_18.*rep_94 - rep_98;
	rep_127 = rep_101.*rep_18 + rep_102.*rep_22 + rep_126.*rep_90;
	rep_128 = -rep_111.*rep_25 - rep_115;
	rep_129 = rep_107.*rep_128 + rep_118.*rep_25 + rep_119.*rep_29;
	rep_130 = m_h.*rep_123.*rep_54.*rep_8 + m_s.*rep_105.*rep_129.*rep_29 + m_s.*rep_125.*rep_15.*rep_71 + m_s.*rep_127.*rep_22.*rep_88 - rep_104.*rep_89 - rep_106.*rep_121 - rep_55.*rep_70 - rep_72.*rep_87;
	rep_131 = rep_5.*rep_54 + rep_54.*rep_9;
	rep_132 = rep_54.*rep_8;
	rep_133 = rep_132.*rep_62 - rep_55.*rep_65;
	rep_134 = -X_h(1).*rep_54 - rep_132.*rep_65 - rep_55.*rep_62;
	rep_135 = rep_131.*rep_61 + rep_133.*rep_8 - rep_134.*rep_4;
	rep_136 = m_h.*rep_135;
	rep_137 = rep_12.*rep_71 + rep_16.*rep_71;
	rep_138 = rep_15.*rep_71;
	rep_139 = rep_138.*rep_79 - rep_72.*rep_82;
	rep_140 = -x_s.*rep_71 - rep_138.*rep_82 - rep_72.*rep_79;
	rep_141 = -rep_11.*rep_140 + rep_137.*rep_78 + rep_139.*rep_15;
	rep_142 = m_s.*rep_141;
	rep_143 = rep_19.*rep_88 + rep_23.*rep_88;
	rep_144 = rep_22.*rep_88;
	rep_145 = rep_144.*rep_96 - rep_89.*rep_99;
	rep_146 = -x_s.*rep_88 - rep_144.*rep_99 - rep_89.*rep_96;
	rep_147 = rep_143.*rep_95 + rep_145.*rep_22 - rep_146.*rep_18;
	rep_148 = m_s.*rep_147;
	rep_149 = rep_105.*rep_26 + rep_105.*rep_30;
	rep_150 = rep_105.*rep_29;
	rep_151 = -rep_106.*rep_116 + rep_113.*rep_150;
	rep_152 = -x_s.*rep_105 - rep_106.*rep_113 - rep_116.*rep_150;
	rep_153 = rep_112.*rep_149 + rep_151.*rep_29 - rep_152.*rep_25;
	rep_154 = m_s.*rep_153;
	rep_155 = rep_122.*rep_131 + rep_133.*rep_4 + rep_134.*rep_8;
	rep_156 = rep_11.*rep_139 + rep_124.*rep_137 + rep_140.*rep_15;
	rep_157 = rep_126.*rep_143 + rep_145.*rep_18 + rep_146.*rep_22;
	rep_158 = rep_128.*rep_149 + rep_151.*rep_25 + rep_152.*rep_29;
	rep_159 = m_h.*rep_155.*rep_54.*rep_8 + m_s.*rep_105.*rep_158.*rep_29 + m_s.*rep_15.*rep_156.*rep_71 + m_s.*rep_157.*rep_22.*rep_88 - rep_106.*rep_154 - rep_136.*rep_55 - rep_142.*rep_72 - rep_148.*rep_89;
	rep_160 = m_h.*X_h(2).^7;
	rep_161 = m_s.*y_s(1).^7;
	rep_162 = m_s.*y_s(2).^7;
	rep_163 = m_s.*y_s(3).^7;
	rep_164 = y_h.^7;
	rep_165 = rep_164.*rep_37;
	rep_166 = b_i.^8.*rep_2/8 + rep_12.*rep_161 + rep_16.*rep_161 + rep_160.*rep_5 + rep_160.*rep_9 + rep_162.*rep_19 + rep_162.*rep_23 + rep_163.*rep_26 + rep_163.*rep_30 + rep_164.*rep_34 + rep_165.*rep_36 + rep_165.*rep_39;
	rep_167 = rep_4.*rep_58;
	rep_168 = rep_11.*rep_75;
	rep_169 = rep_18.*rep_92;
	rep_170 = rep_109.*rep_25;
	rep_171 = m_h.*rep_123.*rep_58.*rep_8 + m_s.*rep_109.*rep_129.*rep_29 + m_s.*rep_125.*rep_15.*rep_75 + m_s.*rep_127.*rep_22.*rep_92 - rep_104.*rep_169 - rep_121.*rep_170 - rep_167.*rep_70 - rep_168.*rep_87;
	rep_172 = m_h.*rep_155.*rep_58.*rep_8 + m_s.*rep_109.*rep_158.*rep_29 + m_s.*rep_15.*rep_156.*rep_75 + m_s.*rep_157.*rep_22.*rep_92 - rep_136.*rep_167 - rep_142.*rep_168 - rep_148.*rep_169 - rep_154.*rep_170;
	rep_173 = m_h.*X_h(2).^8;
	rep_174 = m_s.*y_s(1).^8;
	rep_175 = m_s.*y_s(2).^8;
	rep_176 = m_s.*y_s(3).^8;
	rep_177 = y_h.^8;
	rep_178 = rep_177.*rep_37;
	rep_179 = rep_4.*rep_7;
	rep_180 = rep_11.*rep_14;
	rep_181 = rep_18.*rep_21;
	rep_182 = rep_25.*rep_28;
	rep_183 = m_h.*rep_123.*rep_6.*rep_8 + m_s.*rep_125.*rep_13.*rep_15 + m_s.*rep_127.*rep_20.*rep_22 + m_s.*rep_129.*rep_27.*rep_29 - rep_103.*rep_181 - rep_120.*rep_182 - rep_179.*rep_69 - rep_180.*rep_86;
	rep_184 = m_h.*rep_155.*rep_6.*rep_8 + m_s.*rep_13.*rep_15.*rep_156 + m_s.*rep_157.*rep_20.*rep_22 + m_s.*rep_158.*rep_27.*rep_29 - rep_135.*rep_179 - rep_141.*rep_180 - rep_147.*rep_181 - rep_153.*rep_182;
	rep_185 = c_b.^3.*rho_b;
	rep_186 = b_i.^4.*rep_185/48 + m_h.*rep_123.*rep_155 + m_s.*rep_125.*rep_156 + m_s.*rep_127.*rep_157 + m_s.*rep_129.*rep_158 + I_h(2).*rep_131.*rep_56 + I_s(2).*rep_107.*rep_149 + I_s(2).*rep_137.*rep_73 + I_s(2).*rep_143.*rep_90 + rep_104.*rep_147 + rep_121.*rep_153 + rep_135.*rep_70 + rep_141.*rep_87;
	%% create output vector
	out = [rep_1.*rep_2/5 + rep_12.*rep_14 + rep_14.*rep_16 + rep_19.*rep_21 + rep_21.*rep_23 + rep_26.*rep_28 + rep_28.*rep_30 + rep_31.*rep_34 + rep_36.*rep_38 + rep_38.*rep_39 + rep_5.*rep_7 + rep_7.*rep_9 rep_46 rep_53 rep_130 rep_159;...
		 rep_46 rep_53 rep_166 rep_171 rep_172;...
		 rep_53 rep_166 b_i.^9.*rep_2/9 + rep_12.*rep_174 + rep_16.*rep_174 + rep_173.*rep_5 + rep_173.*rep_9 + rep_175.*rep_19 + rep_175.*rep_23 + rep_176.*rep_26 + rep_176.*rep_30 + rep_177.*rep_34 + rep_178.*rep_36 + rep_178.*rep_39 rep_183 rep_184;...
		 rep_130 rep_171 rep_183 b_i.^3.*rep_185/36 + m_h.*rep_123.^2 + m_h.*rep_69.^2 + m_s.*rep_103.^2 + m_s.*rep_120.^2 + m_s.*rep_125.^2 + m_s.*rep_127.^2 + m_s.*rep_129.^2 + m_s.*rep_86.^2 + I_h(2).*rep_56.^2 + I_s(2).*rep_107.^2 + I_s(2).*rep_73.^2 + I_s(2).*rep_90.^2 rep_186;...
		 rep_159 rep_172 rep_184 rep_186 m_h.*rep_135.^2 + m_h.*rep_155.^2 + m_s.*rep_141.^2 + m_s.*rep_147.^2 + m_s.*rep_153.^2 + m_s.*rep_156.^2 + m_s.*rep_157.^2 + m_s.*rep_158.^2 + I_h(2).*rep_131.^2 + I_s(2).*rep_137.^2 + I_s(2).*rep_143.^2 + I_s(2).*rep_149.^2 + rep_1.*rep_185/60];
end