function [A] = add_scaled_identity2(A)

n = size(A,1);
m = size(A,2);

if (n ~= m)
error("Error Matrix Must be square!");
end

for i = 1:n
   A(i,i) = A(i,i) + 106;   
end


end