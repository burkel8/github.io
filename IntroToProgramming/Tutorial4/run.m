load('A.mat');
load('B.mat');

[C] = mat_mul(A,B);

norm(C - A*B)

[D] = add_scaled_identity1(A);

norm(D - (A + 106*eye(40)))

[D] = add_scaled_identity2(A);

norm(D - (A + 106*eye(40)))