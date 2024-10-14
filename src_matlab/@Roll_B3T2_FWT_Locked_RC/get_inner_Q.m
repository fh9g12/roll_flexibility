function out = get_inner_Q(p,U,W,Xb)
	%GET_INNER_Q Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:24 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = W(3,:).*Xb(2,:);
	rep_2 = Xb(2,:).^2;
	rep_3 = Xb(2,:).^3;
	rep_4 = Xb(2,:).^4;
	rep_5 = rep_2.*W(3,:);
	%% create output vector
	out = [rep_1 + (-rep_2.*U(2) + rep_2.*U(6).*Xb(1,:) - rep_3.*U(3) - rep_4.*U(4) + U(5).*Xb(1,:).*Xb(2,:)).*W(2,:) + W(4,:);...
		 rep_5;...
		 rep_3.*W(3,:);...
		 rep_4.*W(3,:);...
		 -rep_1.*Xb(1,:);...
		 -rep_5.*Xb(1,:)];
end