% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
  NC = size(centroids, 1)
  NP = size(points, 1);
  colors = [];
  idx = zeros(NC, 1);
  for i = 1 : NP
    min_dist = realmax;
    for t = 1 : NC
      %calculez distanta euclidiana
      dist = sqrt(sum((points(i, :) - centroids(t, :)).^2));
      if dist < min_dist
        min_dist = dist;
        idx(i) = t;
      endif
    endfor
endfor
colors = [colors; idx];
scatter3(points(:, 1), points(:, 2), points(:, 3), [], colors, 'filled' ); 
end

