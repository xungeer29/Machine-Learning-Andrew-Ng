function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.
%mormalize=(X.-mean(X))/sigma(��׼��)
mu = mean(X);%�����ݼ�Xÿ�е�ƽ��ֵ
X_norm = bsxfun(@minus, X, mu);%�Ծ���X��mu�е�ÿ��Ԫ�ض�����һ�����

sigma = std(X_norm);%��X_normal�ı�׼��
X_norm = bsxfun(@rdivide, X_norm, sigma);%X_normal./sigma  normalize


% ============================================================

end
