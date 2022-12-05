%my_factorial3 : A function to compute the factorial of a positive integer
%                 using recursion
% Input: N , the number we want to compute the factorial of.
% Output: Nfact, the factorial of N

function [Nfact] = my_factorial3(N)


     %Error check to ensure N is a positive integer
     %If N is negative, throw an error
     if (N < 0)
        %write error message
        msg1 = 'Error: Ensure N is a positive integer';
        
        %Throws error message and stops code
        error(msg1)
     end


     %N =  1 defines the base case, this is when the code stops
     if N == 1
          Nfact = 1;
     %If N is not equal to 1, then call the function again
     else
          
          %N = N*(N-1)*.... 2

          %On the last iteration  the above case when N==1 is executed
          %to compute the final product
          Nfact = N*my_factorial3(N-1);

     end

 end