classdef Roll_RC < mbd.BaseRC
	properties
		DoFs = 3
		m_w = 0.3
		I_w = 0.3
		m_f = 0.3
		I_f = 0.3
		X_w = [0, 0, 0]
		X_h = [0, 0, 0]
		X_f = [0, 0, 0]
		c_h = 0.3
		Lambda = 0.3
		g = 9.81
		g_v = [0, 0, -1]
	end
end