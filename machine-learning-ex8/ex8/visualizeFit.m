function visualizeFit(X, mu, sigma2)
%VISUALIZEFIT Visualize the dataset and its estimated distribution.
%   VISUALIZEFIT(X, p, mu, sigma2) This visualization shows you the 
%   probability density function of the Gaussian distribution. Each example
%   has a location (x1, x2) that depends on its feature values.
%

[X1,X2] = meshgrid(0:.5:35); %生成网格矩阵
Z = multivariateGaussian([X1(:) X2(:)],mu,sigma2);%Z=p(x) 多元高斯分布的p(x)
Z = reshape(Z,size(X1));

plot(X(:, 1), X(:, 2),'bx');%数据集X可视化
hold on;
% Do not plot if there are infinities
if (sum(isinf(Z)) == 0)%如果Z是个有界的数组
    contour(X1, X2, Z, 10.^(-20:3:0)');%绘制多元高斯分布的Z=p(x)的等高线 10.^(-20:3:0)'是什么意思？
end
hold off;

end