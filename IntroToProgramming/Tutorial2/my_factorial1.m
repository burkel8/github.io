%my_factorial1 : A function to compute the factorial of a positive integer
%                 using a for loop
% Input: N , the number we want to compute the factorial of.
% Output: Nfact, the factorial of N

function [Nfact] = my_factorial1(N)

  %Error check to ensure input is a positive integer
  if (N < 0)
  msg1 = 'Error: Ensure N is a positive integer';
  error(msg1)
  end

  %initialize Nfact to 1
  Nfact = 1;

  %iteratively accumalate the product
  for i = 1:N
      Nfact = Nfact*i;
  end

 end