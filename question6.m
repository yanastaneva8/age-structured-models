%% Lab 2: 2019862s
% Question 6

% Calculate the elasticity of the eigenvalue
% to changes in each entry of the matrix A

% Specify the initial matrix A
A=[   0,     0,      0,      0,   127,     4,      80;...
   0.67,  0.74,      0,      0,     0,     0,       0;...
      0,  0.05,   0.66,      0,     0,     0,       0;...
      0,     0,  0.015,   0.69,     0,     0,       0;...
      0,     0,      0,  0.052,     0,     0,       0;...
      0,     0,      0,      0,  0.81,     0,       0;...
      0,     0,      0,      0,     0,  0.81,   0.81];
% Eigenspace of the Usher matrix A
[V,D,W]=eig(A);
% Store the eigenvalues in a vector
L=diag(D);
% Indicate position of dominant eigenvalue
k=find(abs(L)==max(abs(L)));
% Obtain dominant eigenvalue
lambda=L(k);
% Corresponding left eigenvector
w=W(:,k);
% Corresponding right eigenvector
v=V(:,k);
% Calculate the length of the eigenvector
n=length(v);
% Define the vector dot product of v and w
vdotw=dot(v,w);
% Iterate over the columns
for i=1:n;
    % Iterate over the rows
    for j = 1:n;
        % Calculate the sensitivity of 
        % the eigenvalue
        sensitivity(i,j)=v(j)*w(i)/vdotw;
    end; 
end;
% Calculate the elasticity
elasticity=(sensitivity.*A)/lambda
% Store and plot the elasticity of 
% the eigenvalue for the probabilities  
% and fecundities
probabilityStay=diag(elasticity);
probabilityGrow=[diag(elasticity,-1);0];
fecundity=[0,elasticity([1],[2:7])];
figure
plot(1:n,probabilityStay,'k')
axis([1 7 0 0.3])
hold on
plot(1:n,probabilityGrow,'k:') 
plot(1:n,fecundity,'k--')
xlabel('Age class i')
ylabel('Elasticities of \lambda to changes in Pi, Gi, Fi')
legend('Pi - probability of staying',...
    'Gi - probability of growing',...
    'Fi - fecundity')
