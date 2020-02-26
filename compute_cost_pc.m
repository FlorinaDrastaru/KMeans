% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  %aflu numarul de clustere si numarul de puncte
  nr_clusters = size(centroids, 1);
  nr_points = size(points, 1);
  for i = 1 : nr_points
    min_dist = realmax;
    for j = 1 : nr_clusters
      dist = sqrt(sum((points(i, :) - centroids(j, :)).^2)); 
      if dist < min_dist
        min_dist = dist;
      endif
    endfor
    cost = cost + min_dist;
  endfor
end

