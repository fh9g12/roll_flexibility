function out = get_inner_V_b_LHS(p,U,Xb)
	%GET_INNER_V_B_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = rep_2.*U(8);
	rep_4 = b_i.^(-2);
	rep_5 = rep_4.*Xb(2,:).^2;
	rep_6 = rep_4.*Xb(1,:).*Xb(2,:);
	rep_7 = rep_5.*U(12) - rep_6.*U(13);
	rep_8 = rep_5.*U(5) - rep_6.*U(6);
	rep_9 = rep_1.*U(8);
	rep_10 = rep_2.*rep_7 + rep_3.*Xb(2,:) - rep_8.*rep_9;
	rep_11 = -rep_1.*rep_7 - rep_3.*rep_8 - rep_9.*Xb(2,:);
	%% create output vector
	out = [0.*Xb(1,:);...
		 rep_1.*rep_10 + rep_11.*rep_2;...
		 -rep_1.*rep_11 + rep_10.*rep_2];
end