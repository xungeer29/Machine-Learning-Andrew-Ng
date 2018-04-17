function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.
%mormalize=(X.-mean(X))/sigma(标准差)
mu = mean(X);%求数据集X每列的平均值
X_norm = bsxfun(@minus, X, mu);%对矩阵X和mu中的每个元素都进行一次相减

sigma = std(X_norm);%求X_normal的标准差
X_norm = bsxfun(@rdivide, X_norm, sigma);%X_normal./sigma  normalize


% ============================================================

end
