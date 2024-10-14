function out = get_inner_V_b(p,U,Xb)
	%GET_INNER_V_B Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = Xb(2,:).^2;
	%% create output vector
	out = [0.*Xb(1,:);...
		 0.*Xb(1,:);...
		 -rep_1.*U(11).*Xb(1,:) + rep_1.*U(7) + U(8).*Xb(2,:).^3 + U(9).*Xb(2,:).^4 - U(10).*Xb(1,:).*Xb(2,:)];
end