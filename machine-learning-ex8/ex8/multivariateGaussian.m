function p = multivariateGaussian(X, mu, Sigma2)
%MULTIVARIATEGAUSSIAN Computes the probability density function of the
%multivariate gaussian distribution.
%    p = MULTIVARIATEGAUSSIAN(X, mu, Sigma2) Computes the probability 
%    density function of the examples X under the multivariate gaussian 
%    distribution with parameters mu and Sigma2. If Sigma2 is a matrix, it is
%    treated as the covariance matrix. If Sigma2 is a vector, it is treated
%    as the \sigma^2 values of the variances in each dimension (a diagonal
%    covariance matrix)
%

k = length(mu);%k=2 X中mu均值向量的长度

if (size(Sigma2, 2) == 1) || (size(Sigma2, 1) == 1)%当方差是一行或一列的向量时
    Sigma2 = diag(Sigma2);%将sigma转化成对角矩阵，sigma在主对角线上
end

X = bsxfun(@minus, X, mu(:)'); %X = X - mu
p = (2 * pi) ^ (- k / 2) * det(Sigma2) ^ (-0.5) * ...
    exp(-0.5 * sum(bsxfun(@times, X * pinv(Sigma2), X), 2)); %计算多元高斯分布的p(x)

end