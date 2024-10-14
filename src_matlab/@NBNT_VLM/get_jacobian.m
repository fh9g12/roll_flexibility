function [J] = get_jacobian(p,U,t)
    % call the solver
    p.deriv(t,U);
    old_updateAIC = p.updateAIC;
    p.updateAIC = false;
    J = mbd.jacobiancd(@(x)p.deriv(t,x),U);
    p.updateAIC= old_updateAIC;
end
