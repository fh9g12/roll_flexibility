function out = get_inner_V_b(p,U,Xb)
	%GET_INNER_V_B Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = rep_2.*U(4);
	rep_4 = Xb(2,:).^2;
	rep_5 = Xb(1,:).*Xb(2,:);
	rep_6 = rep_4.*U(5) - rep_5.*U(6);
	rep_7 = rep_4.*U(2) - rep_5.*U(3);
	rep_8 = rep_1.*U(4);
	rep_9 = rep_2.*rep_6 + rep_3.*Xb(2,:) - rep_7.*rep_8;
	rep_10 = -rep_1.*rep_6 - rep_3.*rep_7 - rep_8.*Xb(2,:);
	%% create output vector
	out = [0.*Xb(1,:);...
		 rep_1.*rep_9 + rep_10.*rep_2;...
		 -rep_1.*rep_10 + rep_2.*rep_9];
end