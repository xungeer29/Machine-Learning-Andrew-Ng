function visualizeFit(X, mu, sigma2)
%VISUALIZEFIT Visualize the dataset and its estimated distribution.
%   VISUALIZEFIT(X, p, mu, sigma2) This visualization shows you the 
%   probability density function of the Gaussian distribution. Each example
%   has a location (x1, x2) that depends on its feature values.
%

[X1,X2] = meshgrid(0:.5:35); %�����������
Z = multivariateGaussian([X1(:) X2(:)],mu,sigma2);%Z=p(x) ��Ԫ��˹�ֲ���p(x)
Z = reshape(Z,size(X1));

plot(X(:, 1), X(:, 2),'bx');%���ݼ�X���ӻ�
hold on;
% Do not plot if there are infinities
if (sum(isinf(Z)) == 0)%���Z�Ǹ��н������
    contour(X1, X2, Z, 10.^(-20:3:0)');%���ƶ�Ԫ��˹�ֲ���Z=p(x)�ĵȸ��� 10.^(-20:3:0)'��ʲô��˼��
end
hold off;

end