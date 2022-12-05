function [C] = mat_mul(A,B)

m = size(A,1);
n = size(A,2);
p = size(B,2);

%If number of columns of A is not equal to the number of rows of B
%Then we cannot perfom the multiplication, throw an error.
if (n ~= size(B,1))
    error("Error:Incompaitable sizes for matrix multiplication!");
end

%preallocate memory for C
C = zeros(m,p);

for i = 1:m
    for j = 1:p
        sum = 0;
        for k = 1:n
           sum = sum + A(i,k)*B(k,j);
        end
        C(i,j) = sum;
    end
end
  
  


end