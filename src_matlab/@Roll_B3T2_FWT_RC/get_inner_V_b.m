function out = get_inner_V_b(p,U,Xb)
	%GET_INNER_V_B Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = rep_2.*U(8);
	rep_4 = Xb(2,:).^4;
	rep_5 = Xb(2,:).^2;
	rep_6 = Xb(2,:).^3;
	rep_7 = Xb(1,:).*Xb(2,:);
	rep_8 = rep_5.*Xb(1,:);
	rep_9 = rep_4.*U(11) + rep_5.*U(9) + rep_6.*U(10) - rep_7.*U(12) - rep_8.*U(13);
	rep_10 = rep_4.*U(4) + rep_5.*U(2) + rep_6.*U(3) - rep_7.*U(5) - rep_8.*U(6);
	rep_11 = rep_1.*U(8);
	rep_12 = -rep_10.*rep_11 + rep_2.*rep_9 + rep_3.*Xb(2,:);
	rep_13 = -rep_1.*rep_9 - rep_10.*rep_3 - rep_11.*Xb(2,:);
	%% create output vector
	out = [0.*Xb(1,:);...
		 rep_1.*rep_12 + rep_13.*rep_2;...
		 -rep_1.*rep_13 + rep_12.*rep_2];
end