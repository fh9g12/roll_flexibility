function out = fold_stiffness(fold_angle,transition_band,factor,limits)
x_99 = 2.65/(deg2rad(transition_band)/2);
out = factor*0.5*(-tanh((fold_angle-limits(1))*x_99) + tanh((fold_angle-limits(2))*x_99) + 2);
end

