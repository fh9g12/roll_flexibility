function out = get_inner_Q_LHS(p,U,W,Xb)
	%GET_INNER_Q_LHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:59 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = W(3,:).*Xb(2,:);
	rep_2 = b_i.^(-2);
	rep_3 = rep_2.*Xb(2,:).^2;
	%% create output vector
	out = [rep_1 + (rep_2.*U(6).*Xb(1,:).*Xb(2,:) - rep_3.*U(5)).*W(2,:) + W(4,:);...
		 0.*Xb(1,:);...
		 0.*Xb(1,:);...
		 0.*Xb(1,:);...
		 rep_3.*W(3,:);...
		 -rep_1.*rep_2.*Xb(1,:);...
		 0.*Xb(1,:)];
end