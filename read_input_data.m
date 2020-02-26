% reads cluster count and points from input files 
function [NC points] = read_input_data(file_param, file_points)
	% TODO read NC
	% TODO read points
	
	NC = 0;
	points = [];
  NC = load(file_param);
  load(file_points);
	
end

