function out = get_pos_inner_wing(p,U,Xi)
	%GET_POS_INNER_WING Auto-generated function from moyra
	%
	%	Created at : Thu Aug 29 15:18:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	%% create output vector
	out = [Xi(1,:);...
		 -rep_1.*Xi(3,:) + rep_2.*Xi(2,:);...
		 rep_1.*Xi(2,:) + rep_2.*Xi(3,:)];
end