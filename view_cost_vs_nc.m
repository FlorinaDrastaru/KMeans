function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot
  % citesc matricea de puncte din fisierele date 
  load(file_points);
  costs = [];
  for NC = 1 : 10
    centroids = clustering_pc(points, NC);
    cost = compute_cost_pc(points, centroids);
    costs = [costs cost];
  endfor
  plot(1:10, costs);
end

