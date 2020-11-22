
load ('ex7faces.mat')

[X_norm, mu, sigma] = featureNormalize(X);

%  Run PCA
[U, S] = pca(X_norm);

save('faceU.mat','U')

displayData(U(:, 1)');

pause;
displayData(X(1,:));
pause;

K = 100;
Z = projectData(X(1,:), U, K);

X_rec  = recoverData(Z, U, K);
displayData(X_rec);
