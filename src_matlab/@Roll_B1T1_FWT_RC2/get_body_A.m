function out = get_body_A(p,U)
	%GET_BODY_A Auto-generated function from moyra
	%
	%	Created at : Sun Nov 17 16:26:55 2024 
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