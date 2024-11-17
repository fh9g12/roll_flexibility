function out = get_pos_inner_wing_LHS(p,U,Xb)
	%GET_POS_INNER_WING_LHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = cos(U(1));
	rep_2 = sin(U(1));
	rep_3 = b_i.^(-3);
	rep_4 = b_i.^(-2);
	rep_5 = Xb(2,:).^2;
	rep_6 = -rep_3.*rep_5.*U(12).*Xb(1,:) + rep_3.*U(9).*Xb(2,:).^3 + rep_4.*rep_5.*U(8) - rep_4.*U(11).*Xb(1,:).*Xb(2,:) + U(10).*Xb(2,:).^4./b_i.^4;
	%% create output vector
	out = [Xb(1,:);...
		 rep_1.*Xb(2,:) - rep_2.*rep_6;...
		 rep_1.*rep_6 + rep_2.*Xb(2,:)];
end