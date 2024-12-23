function out = get_KE(p,U)
	%GET_KE Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:52 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	y_s = p.y_s;
	X_f = p.X_f;
	I_f = p.I_f;
	m_s = p.m_s;
	I_h = p.I_h;
	x_s = p.x_s;
	X_h = p.X_h;
	m_f = p.m_f;
	I_s = p.I_s;
	c_b = p.c_b;
	Lambda = p.Lambda;
	b_i = p.b_i;
	m_h = p.m_h;
	rho_b = p.rho_b;
	y_h = p.y_h;
	%% create common groups
	rep_1 = U(12).^2;
	rep_2 = b_i/10;
	rep_3 = rep_1.*rep_2;
	rep_4 = sin(U(1));
	rep_5 = rho_b.*rep_4.^4;
	rep_6 = c_b.*rep_5;
	rep_7 = cos(U(1));
	rep_8 = rho_b.*rep_7.^4;
	rep_9 = c_b.*rep_8;
	rep_10 = U(9).^2;
	rep_11 = rep_10.*rep_2;
	rep_12 = b_i.^2;
	rep_13 = rep_12.*U(8);
	rep_14 = rep_13/4;
	rep_15 = rep_14.*U(12);
	rep_16 = rep_14.*U(9);
	rep_17 = U(2).^2;
	rep_18 = U(8).^2;
	rep_19 = rep_18.*rep_2;
	rep_20 = rep_17.*rep_19;
	rep_21 = U(5).^2;
	rep_22 = rep_19.*rep_21;
	rep_23 = U(13).^2;
	rep_24 = 1./b_i;
	rep_25 = c_b.^3.*rep_24;
	rep_26 = rep_25/72;
	rep_27 = rep_23.*rep_26;
	rep_28 = U(10).^2;
	rep_29 = rep_26.*rep_28;
	rep_30 = rep_7.^2;
	rep_31 = rep_4.^2;
	rep_32 = rho_b.*rep_30.*rep_31;
	rep_33 = c_b.*rep_32;
	rep_34 = b_i.*rep_33/5;
	rep_35 = rep_13.*rep_33/2;
	rep_36 = U(3).^2;
	rep_37 = rep_18.*rep_26;
	rep_38 = rep_36.*rep_37;
	rep_39 = U(6).^2;
	rep_40 = rep_37.*rep_39;
	rep_41 = rep_18.*rep_34;
	rep_42 = rep_25.*rep_32/36;
	rep_43 = rep_18.*rep_42;
	rep_44 = rep_24.*U(3);
	rep_45 = X_h(2).*rep_44;
	rep_46 = cos(rep_45);
	rep_47 = rep_46.*U(8);
	rep_48 = rep_31.*rep_47;
	rep_49 = rep_30.*rep_47;
	rep_50 = rep_24.*U(6);
	rep_51 = X_h(2).*rep_50;
	rep_52 = cos(rep_51);
	rep_53 = rep_52.*U(8);
	rep_54 = rep_31.*rep_53;
	rep_55 = rep_30.*rep_53;
	rep_56 = y_s(1).*rep_44;
	rep_57 = cos(rep_56);
	rep_58 = rep_57.*U(8);
	rep_59 = rep_31.*rep_58;
	rep_60 = rep_30.*rep_58;
	rep_61 = y_s(1).*rep_50;
	rep_62 = cos(rep_61);
	rep_63 = rep_62.*U(8);
	rep_64 = rep_31.*rep_63;
	rep_65 = rep_30.*rep_63;
	rep_66 = y_s(2).*rep_44;
	rep_67 = cos(rep_66);
	rep_68 = rep_67.*U(8);
	rep_69 = rep_31.*rep_68;
	rep_70 = rep_30.*rep_68;
	rep_71 = y_s(2).*rep_50;
	rep_72 = cos(rep_71);
	rep_73 = rep_72.*U(8);
	rep_74 = rep_31.*rep_73;
	rep_75 = rep_30.*rep_73;
	rep_76 = y_s(3).*rep_44;
	rep_77 = cos(rep_76);
	rep_78 = rep_77.*U(8);
	rep_79 = rep_31.*rep_78;
	rep_80 = rep_30.*rep_78;
	rep_81 = y_s(3).*rep_50;
	rep_82 = cos(rep_81);
	rep_83 = rep_82.*U(8);
	rep_84 = rep_31.*rep_83;
	rep_85 = rep_30.*rep_83;
	rep_86 = rep_4.*U(8);
	rep_87 = X_h(2).*rep_86;
	rep_88 = 1./rep_12;
	rep_89 = rep_88.*U(13);
	rep_90 = X_h(1).*X_h(2);
	rep_91 = X_h(2).^2;
	rep_92 = rep_88.*rep_91;
	rep_93 = rep_89.*rep_90 + rep_92.*U(12);
	rep_94 = rep_4.*rep_93;
	rep_95 = rep_88.*U(6);
	rep_96 = rep_90.*rep_95 + rep_92.*U(5);
	rep_97 = rep_7.*U(8);
	rep_98 = rep_96.*rep_97;
	rep_99 = rep_87/2;
	rep_100 = X_h(2).*rep_97;
	rep_101 = rep_86.*rep_96;
	rep_102 = rep_100/2;
	rep_103 = y_s(1).*rep_86;
	rep_104 = x_s.*y_s(1);
	rep_105 = y_s(1).^2;
	rep_106 = rep_105.*rep_88;
	rep_107 = rep_104.*rep_89 + rep_106.*U(12);
	rep_108 = rep_107.*rep_4;
	rep_109 = rep_104.*rep_95 + rep_106.*U(5);
	rep_110 = rep_109.*rep_97;
	rep_111 = rep_103/2;
	rep_112 = y_s(1).*rep_97;
	rep_113 = rep_109.*rep_86;
	rep_114 = rep_112/2;
	rep_115 = y_s(2).*rep_86;
	rep_116 = x_s.*y_s(2);
	rep_117 = y_s(2).^2;
	rep_118 = rep_117.*rep_88;
	rep_119 = rep_116.*rep_89 + rep_118.*U(12);
	rep_120 = rep_119.*rep_4;
	rep_121 = rep_116.*rep_95 + rep_118.*U(5);
	rep_122 = rep_121.*rep_97;
	rep_123 = rep_115/2;
	rep_124 = y_s(2).*rep_97;
	rep_125 = rep_121.*rep_86;
	rep_126 = rep_124/2;
	rep_127 = y_s(3).*rep_86;
	rep_128 = x_s.*y_s(3);
	rep_129 = y_s(3).^2;
	rep_130 = rep_129.*rep_88;
	rep_131 = rep_128.*rep_89 + rep_130.*U(12);
	rep_132 = rep_131.*rep_4;
	rep_133 = rep_128.*rep_95 + rep_130.*U(5);
	rep_134 = rep_133.*rep_97;
	rep_135 = rep_127/2;
	rep_136 = y_s(3).*rep_97;
	rep_137 = rep_133.*rep_86;
	rep_138 = rep_136/2;
	rep_139 = rep_88.*rep_90;
	rep_140 = -rep_139.*U(10) + rep_88.*rep_91.*U(9);
	rep_141 = rep_140.*rep_7;
	rep_142 = -rep_139.*U(3) + rep_88.*rep_91.*U(2);
	rep_143 = rep_142.*rep_86;
	rep_144 = rep_104.*rep_88;
	rep_145 = rep_105.*rep_88.*U(9) - rep_144.*U(10);
	rep_146 = rep_145.*rep_7;
	rep_147 = rep_105.*rep_88.*U(2) - rep_144.*U(3);
	rep_148 = rep_147.*rep_86;
	rep_149 = rep_116.*rep_88;
	rep_150 = rep_117.*rep_88.*U(9) - rep_149.*U(10);
	rep_151 = rep_150.*rep_7;
	rep_152 = rep_117.*rep_88.*U(2) - rep_149.*U(3);
	rep_153 = rep_152.*rep_86;
	rep_154 = rep_128.*rep_88;
	rep_155 = rep_129.*rep_88.*U(9) - rep_154.*U(10);
	rep_156 = rep_155.*rep_7;
	rep_157 = rep_129.*rep_88.*U(2) - rep_154.*U(3);
	rep_158 = rep_157.*rep_86;
	rep_159 = rep_140.*rep_4;
	rep_160 = rep_142.*rep_97;
	rep_161 = rep_145.*rep_4;
	rep_162 = rep_147.*rep_97;
	rep_163 = rep_150.*rep_4;
	rep_164 = rep_152.*rep_97;
	rep_165 = rep_155.*rep_4;
	rep_166 = rep_157.*rep_97;
	rep_167 = sin(rep_45);
	rep_168 = rep_167.*U(8);
	rep_169 = rep_24.*U(10);
	rep_170 = X_h(2).*rep_169;
	rep_171 = rep_170.*rep_46;
	rep_172 = rep_7.*(rep_168.*rep_7 + rep_171.*rep_4);
	rep_173 = rep_4.*(rep_168.*rep_4 - rep_171.*rep_7);
	rep_174 = sin(rep_56);
	rep_175 = rep_174.*U(8);
	rep_176 = y_s(1).*rep_169;
	rep_177 = rep_176.*rep_57;
	rep_178 = rep_7.*(rep_175.*rep_7 + rep_177.*rep_4);
	rep_179 = rep_4.*(rep_175.*rep_4 - rep_177.*rep_7);
	rep_180 = sin(rep_66);
	rep_181 = rep_180.*U(8);
	rep_182 = y_s(2).*rep_169;
	rep_183 = rep_182.*rep_67;
	rep_184 = rep_7.*(rep_181.*rep_7 + rep_183.*rep_4);
	rep_185 = rep_4.*(rep_181.*rep_4 - rep_183.*rep_7);
	rep_186 = sin(rep_76);
	rep_187 = rep_186.*U(8);
	rep_188 = y_s(3).*rep_169;
	rep_189 = rep_188.*rep_77;
	rep_190 = rep_7.*(rep_187.*rep_7 + rep_189.*rep_4);
	rep_191 = rep_4.*(rep_187.*rep_4 - rep_189.*rep_7);
	rep_192 = sin(rep_51);
	rep_193 = rep_192.*U(8);
	rep_194 = rep_4.*(X_h(2).*rep_24.*rep_52.*rep_7.*U(13) - rep_193.*rep_4);
	rep_195 = rep_24.*U(13);
	rep_196 = X_h(2).*rep_195;
	rep_197 = rep_7.*(-rep_193.*rep_7 - rep_196.*rep_4.*rep_52);
	rep_198 = sin(rep_61);
	rep_199 = rep_198.*U(8);
	rep_200 = rep_4.*(y_s(1).*rep_24.*rep_62.*rep_7.*U(13) - rep_199.*rep_4);
	rep_201 = y_s(1).*rep_195;
	rep_202 = rep_7.*(-rep_199.*rep_7 - rep_201.*rep_4.*rep_62);
	rep_203 = sin(rep_71);
	rep_204 = rep_203.*U(8);
	rep_205 = rep_4.*(y_s(2).*rep_24.*rep_7.*rep_72.*U(13) - rep_204.*rep_4);
	rep_206 = y_s(2).*rep_195;
	rep_207 = rep_7.*(-rep_204.*rep_7 - rep_206.*rep_4.*rep_72);
	rep_208 = sin(rep_81);
	rep_209 = rep_208.*U(8);
	rep_210 = rep_4.*(y_s(3).*rep_24.*rep_7.*rep_82.*U(13) - rep_209.*rep_4);
	rep_211 = y_s(3).*rep_195;
	rep_212 = rep_7.*(-rep_209.*rep_7 - rep_211.*rep_4.*rep_82);
	rep_213 = rep_170.*rep_46.^2;
	rep_214 = rep_167.*rep_4.*(X_h(2).*rep_167.*rep_24.*rep_4.*U(10) - rep_47.*rep_7);
	rep_215 = rep_167.*rep_7;
	rep_216 = rep_215.*(-rep_170.*rep_215 - rep_4.*rep_47);
	rep_217 = rep_176.*rep_57.^2;
	rep_218 = rep_174.*rep_4.*(y_s(1).*rep_174.*rep_24.*rep_4.*U(10) - rep_58.*rep_7);
	rep_219 = rep_174.*rep_7;
	rep_220 = rep_219.*(-rep_176.*rep_219 - rep_4.*rep_58);
	rep_221 = rep_182.*rep_67.^2;
	rep_222 = rep_180.*rep_4.*(y_s(2).*rep_180.*rep_24.*rep_4.*U(10) - rep_68.*rep_7);
	rep_223 = rep_180.*rep_7;
	rep_224 = rep_223.*(-rep_182.*rep_223 - rep_4.*rep_68);
	rep_225 = rep_188.*rep_77.^2;
	rep_226 = rep_186.*rep_4.*(y_s(3).*rep_186.*rep_24.*rep_4.*U(10) - rep_7.*rep_78);
	rep_227 = rep_186.*rep_7;
	rep_228 = rep_227.*(-rep_188.*rep_227 - rep_4.*rep_78);
	rep_229 = rep_196.*rep_52.^2;
	rep_230 = rep_192.*rep_4.*(X_h(2).*rep_192.*rep_24.*rep_4.*U(13) - rep_53.*rep_7);
	rep_231 = -rep_192.*rep_196.*rep_7 - rep_4.*rep_53;
	rep_232 = rep_201.*rep_62.^2;
	rep_233 = rep_198.*rep_4.*(y_s(1).*rep_198.*rep_24.*rep_4.*U(13) - rep_63.*rep_7);
	rep_234 = -rep_198.*rep_201.*rep_7 - rep_4.*rep_63;
	rep_235 = rep_206.*rep_72.^2;
	rep_236 = rep_203.*rep_4.*(y_s(2).*rep_203.*rep_24.*rep_4.*U(13) - rep_7.*rep_73);
	rep_237 = -rep_203.*rep_206.*rep_7 - rep_4.*rep_73;
	rep_238 = rep_211.*rep_82.^2;
	rep_239 = rep_208.*rep_4.*(y_s(3).*rep_208.*rep_24.*rep_4.*U(13) - rep_7.*rep_83);
	rep_240 = -rep_208.*rep_211.*rep_7 - rep_4.*rep_83;
	rep_241 = y_h.*rep_88;
	rep_242 = rep_241.*U(6);
	rep_243 = sin(rep_242);
	rep_244 = 2*rep_241;
	rep_245 = rep_244.*U(5);
	rep_246 = cos(rep_245);
	rep_247 = rep_243.*rep_246;
	rep_248 = sin(U(7));
	rep_249 = rep_248.*U(14);
	rep_250 = rep_247.*rep_249;
	rep_251 = cos(U(7));
	rep_252 = cos(rep_242);
	rep_253 = sin(rep_245);
	rep_254 = rep_244.*U(12);
	rep_255 = rep_243.*rep_251.*rep_253.*rep_254;
	rep_256 = sin(Lambda);
	rep_257 = rep_243.*rep_256;
	rep_258 = rep_241.*U(13);
	rep_259 = cos(Lambda);
	rep_260 = rep_252.*rep_259;
	rep_261 = rep_253.*rep_260;
	rep_262 = rep_243.*rep_259;
	rep_263 = rep_246.*rep_254;
	rep_264 = -rep_257.*rep_258 - rep_258.*rep_261 - rep_262.*rep_263;
	rep_265 = rep_252.*rep_256;
	rep_266 = rep_253.*rep_262;
	rep_267 = rep_265 - rep_266;
	rep_268 = rep_251.*U(14);
	rep_269 = rep_248.*rep_264 + rep_267.*rep_268;
	rep_270 = y_h.*rep_246.*rep_251.*rep_252.*rep_88.*U(13) - rep_250 - rep_255 - rep_269;
	rep_271 = X_f(3).*rep_270;
	rep_272 = rep_253.*rep_265;
	rep_273 = rep_257.*rep_263 - rep_258.*rep_262 + rep_258.*rep_272;
	rep_274 = rep_251.*rep_256;
	rep_275 = rep_248.*rep_267;
	rep_276 = rep_256.*U(14);
	rep_277 = rep_275.*rep_276;
	rep_278 = rep_246.*rep_268;
	rep_279 = rep_246.*rep_248;
	rep_280 = rep_258.*rep_265;
	rep_281 = rep_253.*rep_257;
	rep_282 = rep_248.*rep_254;
	rep_283 = rep_257.*rep_278 + rep_279.*rep_280 - rep_281.*rep_282;
	rep_284 = rep_259.*rep_273 + rep_264.*rep_274 - rep_277 + rep_283;
	rep_285 = X_f(1).*rep_284;
	rep_286 = rep_262.*rep_278;
	rep_287 = rep_258.*rep_260;
	rep_288 = rep_279.*rep_287;
	rep_289 = rep_251.*rep_259;
	rep_290 = rep_259.*U(14);
	rep_291 = -rep_264.*rep_289 + rep_275.*rep_290;
	rep_292 = rep_256.*rep_273 + rep_266.*rep_282 - rep_286 - rep_288 + rep_291;
	rep_293 = X_f(2).*rep_292;
	rep_294 = rep_246.*rep_252;
	rep_295 = -rep_250 + rep_251.*rep_258.*rep_294 - rep_255 + rep_269;
	rep_296 = X_f(3).*rep_295;
	rep_297 = -rep_273;
	rep_298 = 2*y_h.*rep_243.*rep_248.*rep_253.*rep_259.*rep_88.*U(12) + rep_256.*rep_297 - rep_286 - rep_288 - rep_291;
	rep_299 = X_f(2).*rep_298;
	rep_300 = rep_251.*rep_256.*rep_264 - rep_259.*rep_297 - rep_277 - rep_283;
	rep_301 = X_f(1).*rep_300;
	rep_302 = rep_257.*rep_279;
	rep_303 = rep_260 + rep_281;
	rep_304 = rep_270.*(rep_259.*rep_303 + rep_267.*rep_274 + rep_302);
	rep_305 = rep_253.*rep_4;
	rep_306 = rep_294.*rep_7;
	rep_307 = rep_305 - rep_306;
	rep_308 = rep_248.*rep_256;
	rep_309 = rep_246.*rep_256;
	rep_310 = rep_309.*rep_4;
	rep_311 = -rep_262 + rep_272;
	rep_312 = rep_311.*rep_7;
	rep_313 = rep_310 + rep_312;
	rep_314 = rep_246.*rep_259;
	rep_315 = rep_314.*rep_4;
	rep_316 = rep_257 + rep_261;
	rep_317 = rep_316.*rep_7;
	rep_318 = rep_315 + rep_317;
	rep_319 = rep_253.*rep_7;
	rep_320 = rep_319.*U(8);
	rep_321 = rep_263.*rep_4;
	rep_322 = rep_294.*rep_4;
	rep_323 = rep_247.*rep_258;
	rep_324 = rep_254.*rep_319;
	rep_325 = rep_252.*rep_324 + rep_322.*U(8) + rep_323.*rep_7;
	rep_326 = rep_320 + rep_321 + rep_325;
	rep_327 = rep_314.*rep_7;
	rep_328 = rep_327.*U(8);
	rep_329 = rep_254.*rep_305;
	rep_330 = rep_259.*rep_329;
	rep_331 = -rep_258.*rep_266 + rep_260.*rep_263 + rep_280;
	rep_332 = rep_316.*rep_4;
	rep_333 = -rep_331.*rep_7 + rep_332.*U(8);
	rep_334 = rep_328 - rep_330 - rep_333;
	rep_335 = rep_248.*rep_334 + rep_249.*rep_307 - rep_251.*rep_326 + rep_268.*rep_318;
	rep_336 = rep_335.*(rep_259.*rep_313 - rep_274.*rep_318 - rep_307.*rep_308);
	rep_337 = rep_319 + rep_322;
	rep_338 = -rep_309.*rep_7;
	rep_339 = rep_311.*rep_4;
	rep_340 = rep_338 + rep_339;
	rep_341 = -rep_327 + rep_332;
	rep_342 = rep_305.*U(8);
	rep_343 = rep_263.*rep_7;
	rep_344 = -rep_246.*rep_252.*rep_7.*U(8) + rep_252.*rep_329 + rep_323.*rep_4;
	rep_345 = -rep_342 + rep_343 - rep_344;
	rep_346 = rep_315.*U(8);
	rep_347 = rep_259.*rep_324;
	rep_348 = rep_317.*U(8) + rep_331.*rep_4;
	rep_349 = rep_346 + rep_347 + rep_348;
	rep_350 = rep_248.*rep_337.*U(14) - rep_248.*rep_349 - rep_251.*rep_345 - rep_268.*rep_341;
	rep_351 = rep_350.*(rep_251.*rep_256.*rep_341 - rep_259.*rep_340 - rep_308.*rep_337);
	rep_352 = -rep_303;
	rep_353 = rep_295.*(rep_251.*rep_256.*rep_267 - rep_259.*rep_352 - rep_302);
	rep_354 = -rep_319 + rep_322;
	rep_355 = -rep_311;
	rep_356 = rep_355.*rep_4;
	rep_357 = rep_338 + rep_356;
	rep_358 = rep_327 + rep_332;
	rep_359 = rep_342 - rep_343 - rep_344;
	rep_360 = -rep_346 - rep_347 + rep_348;
	rep_361 = rep_248.*rep_360 + rep_249.*rep_354 - rep_251.*rep_359 + rep_268.*rep_358;
	rep_362 = rep_361.*(rep_259.*rep_357 + rep_274.*rep_358 + rep_308.*rep_354);
	rep_363 = -rep_305 - rep_306;
	rep_364 = rep_355.*rep_7;
	rep_365 = rep_310 + rep_364;
	rep_366 = -rep_315 + rep_317;
	rep_367 = -rep_320 - rep_321 + rep_325;
	rep_368 = -rep_328 + rep_330 - rep_333;
	rep_369 = rep_248.*rep_363.*U(14) - rep_248.*rep_368 - rep_251.*rep_367 - rep_268.*rep_366;
	rep_370 = rep_369.*(rep_248.*rep_256.*rep_363 - rep_259.*rep_365 - rep_274.*rep_366);
	rep_371 = y_h.*rep_86;
	rep_372 = y_h.^2.*rep_88;
	rep_373 = rep_372.*rep_4;
	rep_374 = rep_373.*U(12);
	rep_375 = rep_372.*rep_97;
	rep_376 = rep_375.*U(5);
	rep_377 = X_f(3).*rep_361;
	rep_378 = rep_251.*rep_354;
	rep_379 = rep_248.*rep_358;
	rep_380 = -2*y_h.*rep_246.*rep_252.*rep_256.*rep_88.*U(12) + rep_258.*rep_281 + rep_287;
	rep_381 = rep_256.*rep_324 + rep_309.*rep_86;
	rep_382 = rep_364.*U(8) + rep_380.*rep_4 + rep_381;
	rep_383 = rep_259.*rep_382 + rep_274.*rep_360 + rep_276.*rep_378 - rep_276.*rep_379 + rep_308.*rep_359;
	rep_384 = X_f(1).*rep_383;
	rep_385 = rep_248.*rep_259;
	rep_386 = -rep_256.*rep_382 + rep_289.*rep_360 + rep_290.*rep_378 - rep_290.*rep_379 + rep_359.*rep_385;
	rep_387 = X_f(2).*rep_386;
	rep_388 = rep_371/2;
	rep_389 = y_h.*rep_97;
	rep_390 = rep_372.*rep_7;
	rep_391 = rep_390.*U(9);
	rep_392 = rep_372.*rep_86;
	rep_393 = rep_392.*U(2);
	rep_394 = X_f(3).*rep_335;
	rep_395 = rep_251.*rep_307;
	rep_396 = rep_248.*rep_318;
	rep_397 = -rep_380;
	rep_398 = -rep_246.*rep_256.*rep_7.*U(8) + rep_256.*rep_329;
	rep_399 = -rep_339.*U(8) + rep_397.*rep_7 - rep_398;
	rep_400 = rep_256.*rep_399 + rep_289.*rep_334 + rep_290.*rep_395 - rep_290.*rep_396 + rep_326.*rep_385;
	rep_401 = X_f(2).*rep_400;
	rep_402 = rep_248.*rep_256.*rep_318.*U(14) + rep_259.*rep_399 - rep_274.*rep_334 - rep_276.*rep_395 - rep_308.*rep_326;
	rep_403 = X_f(1).*rep_402;
	rep_404 = rep_389/2;
	rep_405 = rep_373.*U(9);
	rep_406 = rep_375.*U(2);
	rep_407 = rep_251.*rep_337;
	rep_408 = rep_248.*rep_341;
	rep_409 = rep_312.*U(8) + rep_381 + rep_397.*rep_4;
	rep_410 = -rep_256.*rep_409 - rep_289.*rep_349 + rep_290.*rep_407 + rep_290.*rep_408 + rep_345.*rep_385;
	rep_411 = rep_251.*rep_256.*rep_349 - rep_259.*rep_409 - rep_276.*rep_407 - rep_276.*rep_408 - rep_308.*rep_345;
	rep_412 = rep_390.*U(12);
	rep_413 = rep_392.*U(5);
	rep_414 = X_f(3).*rep_369;
	rep_415 = rep_251.*rep_363;
	rep_416 = rep_248.*rep_366;
	rep_417 = -rep_356.*U(8) + rep_380.*rep_7 - rep_398;
	rep_418 = rep_256.*rep_417 - rep_289.*rep_368 + rep_290.*rep_415 + rep_290.*rep_416 + rep_367.*rep_385;
	rep_419 = X_f(2).*rep_418;
	rep_420 = -rep_259.*rep_417 - rep_274.*rep_368 + rep_276.*rep_415 + rep_276.*rep_416 + rep_308.*rep_367;
	rep_421 = X_f(1).*rep_420;
	rep_422 = rep_292.*(rep_243.*rep_246.*rep_251 - rep_275);
	rep_423 = rep_400.*(-rep_395 + rep_396);
	rep_424 = rep_410.*(-rep_407 - rep_408);
	rep_425 = rep_298.*(rep_247.*rep_251 + rep_275);
	rep_426 = rep_386.*(-rep_378 + rep_379);
	rep_427 = rep_418.*(-rep_415 - rep_416);
	rep_428 = rep_262.*rep_279;
	rep_429 = rep_267.*rep_289;
	rep_430 = rep_284.*(rep_256.*rep_303 - rep_428 - rep_429);
	rep_431 = rep_402.*(rep_256.*rep_313 + rep_289.*rep_318 + rep_307.*rep_385);
	rep_432 = rep_411.*(rep_248.*rep_259.*rep_337 - rep_256.*rep_340 - rep_289.*rep_341);
	rep_433 = rep_300.*(rep_256.*rep_352 - rep_428 + rep_429);
	rep_434 = rep_383.*(-rep_256.*rep_357 + rep_289.*rep_358 + rep_354.*rep_385);
	rep_435 = rep_420.*(rep_256.*rep_365 - rep_289.*rep_366 + rep_363.*rep_385);
	%% create output vector
	out = m_f.*(rep_271/2 + rep_285/2 + rep_293/2).*(rep_271 + rep_285 + rep_293) + m_f.*(rep_296/2 + rep_299/2 + rep_301/2).*(rep_296 + rep_299 + rep_301) + m_f.*(rep_371 - rep_374 - rep_376 + rep_377 + rep_384 + rep_387).*(-rep_374/2 - rep_376/2 + rep_377/2 + rep_384/2 + rep_387/2 + rep_388) + m_f.*(-rep_389 + rep_412 - rep_413 + rep_414 + rep_419 + rep_421).*(-rep_404 + rep_412/2 - rep_413/2 + rep_414/2 + rep_419/2 + rep_421/2) + m_f.*(rep_389 + rep_391 - rep_393 + rep_394 + rep_401 + rep_403).*(rep_391/2 - rep_393/2 + rep_394/2 + rep_401/2 + rep_403/2 + rep_404) + m_f.*(X_f(1).*rep_411/2 + X_f(2).*rep_410/2 + X_f(3).*rep_350/2 - rep_388 - rep_405/2 - rep_406/2).*(X_f(1).*rep_411 + X_f(2).*rep_410 + X_f(3).*rep_350 - rep_371 - rep_405 - rep_406) + m_h.*(-rep_100 - rep_101 + rep_7.*rep_93).*(-rep_101/2 - rep_102 + rep_7.*rep_93/2) + m_h.*(rep_100 + rep_141 - rep_143).*(rep_102 + rep_141/2 - rep_143/2) + m_h.*(-rep_159 - rep_160 - rep_87).*(-rep_159/2 - rep_160/2 - rep_99) + m_h.*(rep_87 - rep_94 - rep_98).*(-rep_94/2 - rep_98/2 + rep_99) + m_s.*(-rep_103 - rep_161 - rep_162).*(-rep_111 - rep_161/2 - rep_162/2) + m_s.*(rep_103 - rep_108 - rep_110).*(-rep_108/2 - rep_110/2 + rep_111) + m_s.*(rep_112 + rep_146 - rep_148).*(rep_114 + rep_146/2 - rep_148/2) + m_s.*(-rep_115 - rep_163 - rep_164).*(-rep_123 - rep_163/2 - rep_164/2) + m_s.*(rep_115 - rep_120 - rep_122).*(-rep_120/2 - rep_122/2 + rep_123) + m_s.*(rep_124 + rep_151 - rep_153).*(rep_126 + rep_151/2 - rep_153/2) + m_s.*(-rep_127 - rep_165 - rep_166).*(-rep_135 - rep_165/2 - rep_166/2) + m_s.*(rep_127 - rep_132 - rep_134).*(-rep_132/2 - rep_134/2 + rep_135) + m_s.*(rep_136 + rep_156 - rep_158).*(rep_138 + rep_156/2 - rep_158/2) + m_s.*(rep_107.*rep_7/2 - rep_113/2 - rep_114).*(rep_107.*rep_7 - rep_112 - rep_113) + m_s.*(rep_119.*rep_7/2 - rep_125/2 - rep_126).*(rep_119.*rep_7 - rep_124 - rep_125) + m_s.*(rep_131.*rep_7/2 - rep_137/2 - rep_138).*(rep_131.*rep_7 - rep_136 - rep_137) + I_f(1).*(rep_422/2 + rep_423/2 + rep_424/2).*(rep_422 + rep_423 + rep_424) + I_f(1).*(rep_425/2 + rep_426/2 + rep_427/2).*(rep_425 + rep_426 + rep_427) + I_f(2).*(rep_304/2 + rep_336/2 + rep_351/2).*(rep_304 + rep_336 + rep_351) + I_f(2).*(rep_353/2 + rep_362/2 + rep_370/2).*(rep_353 + rep_362 + rep_370) + I_f(3).*(rep_430/2 + rep_431/2 + rep_432/2).*(rep_430 + rep_431 + rep_432) + I_f(3).*(rep_433/2 + rep_434/2 + rep_435/2).*(rep_433 + rep_434 + rep_435) + I_h(1).*(rep_48/2 + rep_49/2).*(rep_48 + rep_49) + I_h(1).*(rep_54/2 + rep_55/2).*(rep_54 + rep_55) + I_h(2).*(rep_213/2 + rep_214/2 - rep_216/2).*(rep_213 + rep_214 - rep_216) + I_h(2).*(rep_192.*rep_231.*rep_7/2 - rep_229/2 - rep_230/2).*(rep_192.*rep_231.*rep_7 - rep_229 - rep_230) + I_h(3).*(rep_172/2 + rep_173/2).*(rep_172 + rep_173) + I_h(3).*(rep_194/2 + rep_197/2).*(rep_194 + rep_197) + I_s(1).*(rep_59/2 + rep_60/2).*(rep_59 + rep_60) + I_s(1).*(rep_64/2 + rep_65/2).*(rep_64 + rep_65) + I_s(1).*(rep_69/2 + rep_70/2).*(rep_69 + rep_70) + I_s(1).*(rep_74/2 + rep_75/2).*(rep_74 + rep_75) + I_s(1).*(rep_79/2 + rep_80/2).*(rep_79 + rep_80) + I_s(1).*(rep_84/2 + rep_85/2).*(rep_84 + rep_85) + I_s(2).*(rep_217/2 + rep_218/2 - rep_220/2).*(rep_217 + rep_218 - rep_220) + I_s(2).*(rep_221/2 + rep_222/2 - rep_224/2).*(rep_221 + rep_222 - rep_224) + I_s(2).*(rep_225/2 + rep_226/2 - rep_228/2).*(rep_225 + rep_226 - rep_228) + I_s(2).*(rep_198.*rep_234.*rep_7/2 - rep_232/2 - rep_233/2).*(rep_198.*rep_234.*rep_7 - rep_232 - rep_233) + I_s(2).*(rep_203.*rep_237.*rep_7/2 - rep_235/2 - rep_236/2).*(rep_203.*rep_237.*rep_7 - rep_235 - rep_236) + I_s(2).*(rep_208.*rep_240.*rep_7/2 - rep_238/2 - rep_239/2).*(rep_208.*rep_240.*rep_7 - rep_238 - rep_239) + I_s(3).*(rep_178/2 + rep_179/2).*(rep_178 + rep_179) + I_s(3).*(rep_184/2 + rep_185/2).*(rep_184 + rep_185) + I_s(3).*(rep_190/2 + rep_191/2).*(rep_190 + rep_191) + I_s(3).*(rep_200/2 + rep_202/2).*(rep_200 + rep_202) + I_s(3).*(rep_205/2 + rep_207/2).*(rep_205 + rep_207) + I_s(3).*(rep_210/2 + rep_212/2).*(rep_210 + rep_212) - rep_1.*rep_34 + rep_10.*rep_34 + rep_11.*rep_6 + rep_11.*rep_9 + rep_15.*rep_6 + rep_15.*rep_9 + rep_16.*rep_6 + rep_16.*rep_9 + rep_17.*rep_41 + rep_20.*rep_6 + rep_20.*rep_9 - rep_21.*rep_41 - rep_22.*rep_6 - rep_22.*rep_9 - rep_23.*rep_42 - rep_27.*rep_5 - rep_27.*rep_8 + rep_28.*rep_42 + rep_29.*rep_5 + rep_29.*rep_8 - rep_3.*rep_6 - rep_3.*rep_9 + rep_35.*U(12) + rep_35.*U(9) + rep_36.*rep_43 + rep_38.*rep_5 + rep_38.*rep_8 - rep_39.*rep_43 - rep_40.*rep_5 - rep_40.*rep_8;
end