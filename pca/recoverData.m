function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
X_rec = zeros(size(Z, 1), size(U, 1));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
%               For the i-th example Z(i,:), the (approximate)
%               recovered data for dimension j is given as follows:
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%
%               Notice that U(j, 1:K) is a row vector.

%说明：利用U中的前K个特征向量投影回原始空间，计算数据的近似值。

%对于第i个示例Z（i，：），维度j的（近似）恢复数据如下所示：
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%注意U（j，1:K）是行向量。          

U_reconstruct= U(:, 1:K);


X_rec=Z*U_reconstruct';



% =============================================================

end
