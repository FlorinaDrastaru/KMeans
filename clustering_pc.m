% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
% TODO K-Means code 
% initializez numarul maxim de iteratii 
  maxiter = 200;
% aflu dimensiunile matricei points
  [m n] = size(points);
% creez o matrice cu zerouri de NC linii si n coloane 
  centroids = zeros(NC, n);
  randomIdx = randperm(m);
  centroids = points(randomIdx(1 : NC), :);
  for i = 1 : maxiter
  clusters = zeros(NC, n);
  cluster_idx = zeros(NC, 1);
  for j = 1 : m
    min_dist = realmax;
    q = 0;
    for t = 1 : NC
      %calculez distanta euclidiana
      dist = sqrt(sum((points(j, :) - centroids(t, :)).^2));
      if dist < min_dist
        min_dist = dist;
        q = t;
      endif
    endfor
    clusters(q, :) += points(j, :);
    cluster_idx(q)++;
  endfor
  new_centroids = zeros(NC, n);
  %aflu pozitiile noilor centroizi 
  for w = 1 : NC
    new_centroids(w, :) = clusters(w, :)/cluster_idx(w);
  endfor
  %verific daca pozitiile noilor centroizi s-au modificat
  if abs(new_centroids-centroids) < eps
    break;
  else
    centroids = new_centroids;
  endif
  endfor
endfunction



