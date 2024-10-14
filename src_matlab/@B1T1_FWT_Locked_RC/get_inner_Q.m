function out = get_inner_Q(p,U,W,Xb)
	%GET_INNER_Q Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = rep_1.^2;
	rep_3 = cos(U(1));
	rep_4 = rep_3.^2;
	rep_5 = rep_2 + rep_4;
	rep_6 = Xb(2,:).^2;
	rep_7 = Xb(1,:).*Xb(2,:);
	rep_8 = rep_6.*U(2) - rep_7.*U(3);
	rep_9 = rep_1.*Xb(2,:) + rep_3.*rep_8;
	rep_10 = rep_3.*rep_9;
	rep_11 = rep_1.*rep_8 - rep_3.*Xb(2,:);
	rep_12 = -rep_11;
	rep_13 = rep_1.*rep_12 - rep_10;
	rep_14 = rep_1.*rep_9;
	rep_15 = -rep_12.*rep_3 - rep_14;
	rep_16 = -rep_1.*rep_13 - rep_11 + rep_15.*rep_3;
	rep_17 = -rep_1.*rep_15 - rep_13.*rep_3 - rep_9;
	%% create output vector
	out = [rep_5.*W(4, 1) + (rep_1.*rep_16 + rep_17.*rep_3 + rep_5.*(-rep_1.*rep_11 - rep_10)).*W(2, 1) + (-rep_1.*rep_17 + rep_16.*rep_3 + rep_5.*(-rep_11.*rep_3 + rep_14)).*W(3, 1);...
		 (rep_2.*rep_6 + rep_4.*rep_6).*W(3, 1);...
		 (-rep_2.*rep_7 - rep_4.*rep_7).*W(3, 1)];
end