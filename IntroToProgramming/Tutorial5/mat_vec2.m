%Function which takes in an n x 1 vector and implicitly computes the matrix
%vector product v = A*b and returns the result.

function [v] = mat_vec2(b)

n = size(b,1);
v = zeros(n,1);

m = sqrt(n);
T = full(gallery("tridiag",m,-1,2,-1));
I = eye(m);

M = T + 2*I;

%DO NOT explicitly construct A = kron(T,I) + kron(I,T)

%Treat first and last blocks of v seperately
v(1:m) = M*b(1:m) - b(m+1:2*m);
v(n-(m-1):n) = M*b(n-(m-1):n) - b(n-(m-1)-m:n-m);


%For the remaining (n - 2) blocks in between, do the following
for i = 2:m-1
   v(m*(i-1)+1:m*i) = -b(m*(i-2)+1:m*(i-1)) + M*b(m*(i-1)+1:m*i) - b(m*(i)+1:m*(i+1));
end

end