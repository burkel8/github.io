m = 3;   %Input parameter m to construct a Poisson matrix of size m*m x m*m
n = m*m;

[P] = generate_Poisson(m);
norm(P - full(gallery("poisson",m)))

b = rand(n,1);

[v1] = mat_vec1(P,b);
[v2] = mat_vec2(b);

w = A*b;

norm(w-v1)
norm(w-v2)