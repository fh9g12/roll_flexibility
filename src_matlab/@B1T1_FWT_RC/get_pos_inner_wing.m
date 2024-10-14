function out = get_pos_inner_wing(p,U,Xb)
	%GET_POS_INNER_WING Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:39 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = cos(U(1));
	rep_2 = sin(U(1));
	rep_3 = U(2).*Xb(2,:).^2 - U(3).*Xb(1,:).*Xb(2,:);
	%% create output vector
	out = [Xb(1,:);...
		 rep_1.*Xb(2,:) - rep_2.*rep_3;...
		 rep_1.*rep_3 + rep_2.*Xb(2,:)];
end