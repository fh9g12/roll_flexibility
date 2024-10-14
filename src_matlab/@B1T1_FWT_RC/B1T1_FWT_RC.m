classdef B1T1_FWT_RC < mbd.BaseRC
	properties
		DoFs = 4
		g = 9.81
		g_v = [0, 0, -1]
		y_h = 0.3
		Lambda = 0.3
		b_i = 0.3
		rho_b = 0.3
		c_b = 0.3
		EI = 0.3
		GJ = 0.3
		K = 0.3
		m_s = 0
		I_s = [0, 0, 0]
		x_s = 0.3
		y_s = [0, 0, 0]
		m_h = 0
		I_h = [0, 0, 0]
		X_h = [1, 1, 0]
		k_h = 0
		d_h = 0
		m_f = 0
		I_f = [0, 0, 0]
		X_f = [1, 1, 0]
	end
end