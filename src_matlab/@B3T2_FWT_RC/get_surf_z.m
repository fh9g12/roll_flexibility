function out = get_surf_z(p,U,Xb)
	%GET_SURF_Z Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 15:53:36 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	%% create output vector
	out = [(U(4) + U(5).*Xb(2,:)).*Xb(2,:);...
		 -2*U(1).*Xb(2,:) - 3*U(2).*Xb(2,:).^2 - 4*U(3).*Xb(2,:).^3 + U(4).*Xb(1,:) + 2*U(5).*Xb(1,:).*Xb(2,:);...
		 ones(1,size(Xb,2))];
end