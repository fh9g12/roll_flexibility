function set_aoa(p,aoa)
p.alpha_r = aoa + p.Downwash;
p.g_v = fh.roty(aoa)*[0 0 1]';
end

