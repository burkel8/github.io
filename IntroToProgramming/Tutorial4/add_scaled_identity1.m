function [A] = add_scaled_identity1(A)

n = size(A,1);
m = size(A,2);

if (n ~= m)
error("Error Matrix Must be square!");
end

%Explicity construct n x n identity matrix
I = zeros(n,n);
for i = 1:n
   I(i,i) = 1;
end

for i = 1:n
   for j = 1:n
      A(i,j) = A(i,j) + 106*I(i,j);
   end
end


end