%User specified parameters
N = [1,2,3,4,5,6,7,8,9,10,15,20,30,50,100,120];   %Number of Monte Carlo Sample Points

%Total number of experiments
Num_experiments = size(N,2);

%Pre allocate results vector
results = zeros(1,Num_experiments);

%Loop through the differnt values of N
for j = 1:Num_experiments

%Initialize counter to zero    
inside_count = 0;

%Generate random points
for i = 1:N(j)

x = rand;
y = rand;

%Check if the generated point is inside the circle
%If so, increment the counter
if(x*x + y*y <= 1)
   inside_count = inside_count + 1;
end

end
%compute estimate
pi_estimate = 4*(inside_count/N(j));

%store result in relevant entry of the results vector
results(j) = pi_estimate;
end

%plot results
plot(N,results,'-o');
hold on;
yline(pi);
hold off;

title("A Monte Carlo Estimate of $\pi$", 'interpreter', 'latex');
ylabel("Estimate of $\pi$", 'interpreter', 'latex');
xlabel("Number of Sample Points")
legend("Estimate of $\pi$", "exact value of $\pi$", 'interpreter', 'latex');
grid on;

