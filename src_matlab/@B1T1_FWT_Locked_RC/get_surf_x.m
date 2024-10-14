function out = get_surf_x(p,U,Xb)
	%GET_SURF_X Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 19:16:55 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = U(2).*Xb(2,:).^2;
	rep_3 = rep_2 - U(3).*Xb(2,:);
	rep_4 = cos(U(1));
	%% create output vector
	out = [0.*Xb(1,:) + 1;...
		 rep_1.*rep_2 - rep_1.*rep_3;...
		 -rep_2.*rep_4 + rep_3.*rep_4];
end