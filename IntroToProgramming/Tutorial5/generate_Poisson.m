%Function takes in an integer m and returns an m*m x m*m
% Poisson matrix

function [A] = generate_Poisson(m)

T = full(gallery("tridiag",m,-1,2,-1));
I = eye(m);
K1 = kron(T,I);
K2 = kron(I,T);
A = K1 + K2;

end