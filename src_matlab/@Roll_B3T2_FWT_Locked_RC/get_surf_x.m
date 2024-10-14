function out = get_surf_x(p,U,Xb)
	%GET_SURF_X Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:56:23 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = Xb(2,:).^2;
	rep_3 = rep_2.*U(2) + U(3).*Xb(2,:).^3 + U(4).*Xb(2,:).^4;
	rep_4 = -rep_2.*U(6) + rep_3 - U(5).*Xb(2,:);
	rep_5 = cos(U(1));
	%% create output vector
	out = [0.*Xb(1,:) + 1;...
		 rep_1.*rep_3 - rep_1.*rep_4;...
		 -rep_3.*rep_5 + rep_4.*rep_5];
end