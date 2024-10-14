function out = get_inner_Q(p,U,W,Xi)
	%GET_INNER_Q Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:43 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = rep_1.^2 + rep_2.^2;
	rep_4 = rep_1.*Xi(2,:) + rep_2.*Xi(3,:);
	rep_5 = rep_1.*rep_4;
	rep_6 = rep_1.*Xi(3,:);
	rep_7 = rep_2.*Xi(2,:);
	rep_8 = rep_6 - rep_7;
	rep_9 = -rep_8;
	rep_10 = -rep_2.*rep_9 - rep_5;
	rep_11 = rep_2.*rep_4;
	rep_12 = rep_1.*rep_9 - rep_11;
	rep_13 = -rep_1.*rep_12 + rep_10.*rep_2 - rep_6 + rep_7;
	rep_14 = -rep_1.*rep_10 - rep_12.*rep_2 - rep_4;
	%% create output vector
	out = [rep_3.*W(4, 1) + (rep_1.*rep_13 + rep_14.*rep_2 + rep_3.*(-rep_1.*rep_8 - rep_11)).*W(2, 1) + (-rep_1.*rep_14 + rep_13.*rep_2 + rep_3.*(-rep_2.*rep_8 + rep_5)).*W(3, 1);...
		 0.*Xi(1,:);...
		 0.*Xi(1,:)];
end