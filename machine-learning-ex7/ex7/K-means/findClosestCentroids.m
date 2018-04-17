function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);%返回矩阵centroids的行数，即聚类中心数K

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);%返回X行,即300行，1列的0矩阵

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
% for i = 1 : size(X,1)  % 1：300
% % 	[temp,idx(i)] = min(sum((X(i,:). - centroids) .^ 2, 2)); %计算每个坐标点与聚类中心的差的平方的行和的最小值 min{|X-Z|^2}
%     [temp,idx(i)] = min(norm((X(i,:). - centroids) .^ 2, 2));
% end

for i = 1 : size(X,1)
	minN = sum((X(i,:) - centroids(1,:)) .^ 2);
	idx(i) = 1;
	for k = 2 : K
		tempMinN = sum((X(i,:) - centroids(k,:)) .^ 2);
		if tempMinN < minN
			minN = tempMinN;
			idx(i) = k;
		end
	end
end

% =============================================================

end

