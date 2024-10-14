function out = get_pos_inner_wing(p,U,Xb)
	%GET_POS_INNER_WING Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:35 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = Xb(2,:).^2;
	%% create output vector
	out = [Xb(1,:);...
		 Xb(2,:);...
		 rep_1.*U(1) - rep_1.*U(5).*Xb(1,:) + U(2).*Xb(2,:).^3 + U(3).*Xb(2,:).^4 - U(4).*Xb(1,:).*Xb(2,:)];
end