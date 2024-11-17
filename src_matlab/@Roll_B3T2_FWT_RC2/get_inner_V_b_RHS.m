function out = get_inner_V_b_RHS(p,U,Xb)
	%GET_INNER_V_B_RHS Auto-generated function from moyra
	%
	%	Created at : Sat Nov 16 22:38:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = rep_2.*U(14);
	rep_4 = Xb(2,:).^4./b_i.^4;
	rep_5 = b_i.^(-3);
	rep_6 = rep_5.*Xb(2,:).^3;
	rep_7 = b_i.^(-2);
	rep_8 = Xb(2,:).^2;
	rep_9 = rep_7.*rep_8;
	rep_10 = rep_7.*Xb(1,:).*Xb(2,:);
	rep_11 = rep_5.*rep_8.*Xb(1,:);
	rep_12 = -rep_10.*U(18) - rep_11.*U(19) + rep_4.*U(17) + rep_6.*U(16) + rep_9.*U(15);
	rep_13 = -rep_10.*U(5) - rep_11.*U(6) + rep_4.*U(4) + rep_6.*U(3) + rep_9.*U(2);
	rep_14 = rep_1.*U(14);
	rep_15 = rep_12.*rep_2 - rep_13.*rep_14 + rep_3.*Xb(2,:);
	rep_16 = -rep_1.*rep_12 - rep_13.*rep_3 - rep_14.*Xb(2,:);
	%% create output vector
	out = [0.*Xb(1,:);...
		 rep_1.*rep_15 + rep_16.*rep_2;...
		 -rep_1.*rep_16 + rep_15.*rep_2];
end