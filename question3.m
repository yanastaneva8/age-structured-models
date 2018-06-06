%% Lab 2: 2019862s
% Question 3

% Enter matrix entries, vary A_{2,2}=a, for
% a = [0,1] with increments of 0.05, 
% calculate the dominant eigenvalues,
% and store them in a vector.
% Specify the initial matrix A
A=[   0,     0,      0,      0,   127,     4,      80;...
   0.67,  0.74,      0,      0,     0,     0,       0;...
      0,  0.05,   0.66,      0,     0,     0,       0;...
      0,     0,  0.015,   0.69,     0,     0,       0;...
      0,     0,      0,  0.052,     0,     0,       0;...
      0,     0,      0,      0,  0.81,     0,       0;...
      0,     0,      0,      0,     0,  0.81,   0.81];  
% Pre-allocate the values we want to iterate 
% over for the element in (2, 2)
a = (0:0.05:1)';
% Pre-allocate a vector to store the maximum eigenvalues
A22Vec = NaN * ones(length(a), 1);
% Loop over A22Vec
for i = 1:1:length(a)
    % Obtain the version of A for the current iteration
    A(2, 2) = a(i);
    % Obtain the maximum eigenvalue of the 
    % current A, and store in gVec
    A22Vec(i, 1) = max(eig(A));
end
% Show the vector in the console
disp(A22Vec);
% Begin figure
figure
% Plot the vector with the stored eigenvalues
% vs. a=[0,1], i.e. how the eigenvalues change 
% as we vary the A_{2,2} entry of the Usher matrix
plot(a, A22Vec);
xlabel('a=[0:0.05:1]')
ylabel('Dominant eigenvalues \lambda')
title('Dominant eigenvalues vs a')
