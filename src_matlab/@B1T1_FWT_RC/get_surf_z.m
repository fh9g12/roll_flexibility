function out = get_surf_z(p,U,Xb)
	%GET_SURF_Z Auto-generated function from moyra
	%
	%	Created at : Fri Aug 30 14:19:40 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = cos(U(1));
	rep_3 = -2*U(2).*Xb(2,:) + U(3).*Xb(1,:);
	%% create output vector
	out = [U(3).*Xb(2,:);...
		 -rep_1 + rep_2.*rep_3;...
		 rep_1.*rep_3 + rep_2];
end