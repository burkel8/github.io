n = [1 2 3 4 5 6 7 8 9 10];
num_experiments = size(n,2);
midpoint_results = zeros(1,num_experiments);
trapezoidal_results = zeros(1,num_experiments);

a = -3;
b = 1;

for i = 1:num_experiments

[r_m] = midpoint(a,b,n(i));
[r_t] = trapezoidal(a,b,n(i));
midpoint_results(1,i)=r_m;
trapezoidal_results(1,i) = r_t;
end

plot(n,midpoint_results);
hold on;
plot(n,trapezoidal_results);
yline(84) %exact

title("Midpoint method vs. Trapezoidal method");
xlabel("Number of interval partitions");
ylabel("Estimate of definite integral");

legend("Midpoint rule","Trapezoidal rule");
grid on;