%% Lab 2: 2019862s
% Question 2

% Find the dominant eigenvalue (growth rate) and 
% the right eigenvector (stable age distribution).

A=[   0,     0,      0,      0,   127,     4,      80;...
   0.67,  0.74,      0,      0,     0,     0,       0;...
      0,  0.05,   0.66,      0,     0,     0,       0;...
      0,     0,  0.015,   0.69,     0,     0,       0;...
      0,     0,      0,  0.052,     0,     0,       0;...
      0,     0,      0,      0,  0.81,     0,       0;...
      0,     0,      0,      0,     0,  0.81,   0.81];
% Show the eigenvectors with corresponding eigenvalues
[V,D]=eig(A);
% Store all eigenvalues from the diagonal matrix
L=diag(D);
% The position of the dominant eigenvalue
j=find(abs(L)==max(abs(L)));
% Ensure there is a unique dominant eigenvalue
ndom=length(L);
% Display the eigenvalue
lambda=L(j);
disp(lambda);
% Stable age distirbution
v=V(:,j);
disp(v);


% Uncomment code below to estimate the
% stable age distirbution at time t.
% % Set value for time we are interested in
% t = 40;
% % Approximate the population using Equation (2)
% Ntime=lambda^(t)*v;
% disp(Ntime);