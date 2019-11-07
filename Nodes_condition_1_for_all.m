clear all;

% p is the number of files in the folder

% Depending on which degenerate eigenvalue you want to study, you have to modify the line 29. 
for p=10

% The filenames must be written as follows : Matrix1.dat, Matrix2.dat,..., Degree1.dat, Degree2.dat,...
Matrix=fullfile(sprintf('Matrix%d.dat',p));

Degree=fullfile(sprintf('Degree%d.dat',p));

Nodes_condition_1=fullfile(sprintf('Nodes_condition_1%d.dat',p));

Eigenvalues=fullfile(sprintf('Eigenvalues%d.dat',p));

M=load(Matrix);

Eigenvalues=eig(M);

fprintf(ffid, '%d\t%d\n' , Eigenvalues);

[Eigenvectors,A]=eig(M);

clear A;

Degree=load(Degree);

fid=fopen(Nodes_condition_1, 'w');

% To study 0 eigenvalue, M(i,i)=0
% To study -1 eigenvalue, M(i,i)=1
% To study +1 eigenvalue, M(i,i)=-1

for i=1:size(M,1)
    M(i,i)=0;
end

for i=1:size(M,1)
  X=find(M(i,:));
  for j=i+1:size(M,1)
    if Degree(i)==Degree(j)
      Y=find(M(j,:));
        if X==Y
          fprintf(fid, '%d\t%d\n', i, j);
        else
          'FALSE';
       end
    else
      'FALSE';
    end
      
  end    
    
end

fclose('all');

clear all;               
 
end
