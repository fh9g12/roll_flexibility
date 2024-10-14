function out = get_surf_z(p,U,Xb)
	%GET_SURF_Z Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = sin(U(1));
	rep_2 = U(6).*Xb(2,:);
	rep_3 = cos(U(1));
	rep_4 = -2*U(2).*Xb(2,:) - 3*U(3).*Xb(2,:).^2 - 4*U(4).*Xb(2,:).^3 + U(5).*Xb(1,:) + 2*U(6).*Xb(1,:).*Xb(2,:);
	%% create output vector
	out = [(rep_1.^2.*rep_2 + rep_2.*rep_3.^2 + U(5)).*Xb(2,:);...
		 -rep_1 + rep_3.*rep_4;...
		 rep_1.*rep_4 + rep_3];
end