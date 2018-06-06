%% Lab 2: 2019862s
% Question 5

% Enter matrix entries, calculate the eigenvalues,
% and find the dominant eigenvalue.

A=[   0,     0,      0,      0,   127,     4,     80;...
   0.67,  0.74,      0,      0,     0,     0,      0;...
      0,  0.05,   0.66,      0,     0,     0,      0;...
      0,     0,  0.015,   0.69,     0,     0,      0;...
      0,     0,      0,  0.052,     0,     0,      0;...
      0,     0,      0,      0,  0.81,     0,      0;...
      0,     0,      0,      0,     0,  0.81,  0.81];
% Show the eigenvectors with corresponding eigenvalues
[V,D,W]=eig(A);
% Store all eigenvalues from the diagonal matrix
L=diag(D);
% The position of the dominant eigenvalue
j=find(abs(L)==max(abs(L)));
% Ensure there is a unique dominant eigenvalue
ndom=length(L1);
% Display the eigenvalue
lambda=L(j);
disp(lambda);
% Left eigenvector
w=W(:,j)';
disp(w);

