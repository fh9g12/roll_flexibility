function out = get_surf_x(p,U,Xb)
	%GET_SURF_X Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:52:42 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	%% create output vector
	out = [0.*Xb(1,:) + 1;...
		 0.*Xb(1,:);...
		 -U(4).*Xb(2,:) - U(5).*Xb(2,:).^2];
end