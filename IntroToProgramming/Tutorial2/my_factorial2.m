%my_factorial2 : A function to compute the factorial of a positive integer
%                 using a while loop
% Input: N , the number we want to compute the factorial of.
% Output: Nfact, the factorial of N

function [Nfact] = my_factorial2(N)

  %Error check to ensure input is positive integer
  if (N < 0)
  msg1 = 'Error: Ensure N is a positive integer';
  error(msg1)
  end

  %Nfact stores the final answer for the factorial 
  %We initialize to 1 and accumalate the product in this 
  %variable.
  Nfact = 1;

  i = 1;  %A variable which determines when to stop

  %We know we have to compute N products so keep incrementing i
  %and stop when it gets to N
  while i <= N

      % At iteration i, N = i(i-1) (iteratively accumalates product)
      Nfact = Nfact*i;

      i = i + 1;
  end

 end