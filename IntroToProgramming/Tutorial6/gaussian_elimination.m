%A function which takes in a square matrix A and vector b
%and performs Gaussian Elimination on A and b, and returns the resulting
%upper traiangular matrix A (which has overwritten original A) and the new
%vector b which has overwritten the original b.

function [A,b] = gaussian_elimination(A,b)

n = size(A,1);
m = size(A,2);

%Error check to ensure matrix is square
if(n~=m)
error("Error: Matrix is not square");
end

%For each column of A up until the second last
for k = 1:n-1
    %For each row of column i below the element in row i
    for i = k+1:n
       
       %compute multiplier
       m = A(i,k)/A(k,k);

         %For each element in the current row subtract the multiple of row k
         for j = k:n
            A(i,j) = A(i,j) - m*A(k,j);
         end

        %Do the same thing for the vector b
        b(i) = b(i) - m*b(k);
    end
end
end