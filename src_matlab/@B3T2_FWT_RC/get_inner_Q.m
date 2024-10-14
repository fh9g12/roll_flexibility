function out = get_inner_Q(p,U,W,Xb)
	%GET_INNER_Q Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:37 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = W(3,:).*Xb(2,:).^2;
	%% create output vector
	out = [rep_1;...
		 W(3,:).*Xb(2,:).^3;...
		 W(3,:).*Xb(2,:).^4;...
		 -W(3,:).*Xb(1,:).*Xb(2,:);...
		 -rep_1.*Xb(1,:);...
		 0.*Xb(1,:)];
end