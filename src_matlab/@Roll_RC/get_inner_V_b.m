function out = get_inner_V_b(p,U,Xi)
	%GET_INNER_V_B Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = U(4).*Xi(3,:);
	rep_3 = cos(U(1));
	rep_4 = -rep_1.*rep_2 + rep_3.*U(4).*Xi(2,:);
	rep_5 = -rep_1.*U(4).*Xi(2,:) - rep_2.*rep_3;
	%% create output vector
	out = [0.*Xi(1,:);...
		 rep_1.*rep_4 + rep_3.*rep_5;...
		 -rep_1.*rep_5 + rep_3.*rep_4];
end