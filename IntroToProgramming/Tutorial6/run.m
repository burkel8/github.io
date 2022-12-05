%Construct matrix A and vector b for the linear system.
A = [2 -3 -1;
    3 5 -3;
    4 -1 2];
b = [7 -2 17];

%Apply Gaussian elimination to construct upper triangular matrix U
% and modified vector b
[U,b] = gaussian_elimination(A,b);

%Solve upper triangular system with backward substitution and store result
%in vector x
[x] = back_sub(U,b);


