function out = get_pos_inner_wing_RHS(p,U,Xb)
	%GET_POS_INNER_WING_RHS Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:53 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	b_i = p.b_i;
	%% create common groups
	rep_1 = cos(U(1));
	rep_2 = sin(U(1));
	rep_3 = b_i.^(-2);
	rep_4 = rep_3.*U(2).*Xb(2,:).^2 - rep_3.*U(3).*Xb(1,:).*Xb(2,:);
	%% create output vector
	out = [Xb(1,:);...
		 rep_1.*Xb(2,:) - rep_2.*rep_4;...
		 rep_1.*rep_4 + rep_2.*Xb(2,:)];
end