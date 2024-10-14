function out = get_body_A(p,U)
	%GET_BODY_A Auto-generated function from moyra
	%
	%	Created at : Sat Sep  7 16:01:46 2024 
	%	Created with : moyra https://pypi.org/project/moyra/
	%
	%% extract required parameters from structure
	%% create common groups
	rep_1 = cos(U(1));
	rep_2 = sin(U(1));
	%% create output vector
	out = [1 0 0;...
		 0 rep_1 -rep_2;...
		 0 rep_2 rep_1];
end