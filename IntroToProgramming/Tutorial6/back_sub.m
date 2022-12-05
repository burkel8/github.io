%Function which takes in an upper triangular matrix U and vector b
%and solves the linear system Ux=b. Solution x is returned.

function [x] = back_sub(U,b)

    n = size(U,1);
    m = size(U,2);

    x = zeros(n,1);

    %Error check to ensure input matrix is square
    if m~= n
      error("Error:Matrix must be square!");
    end

     %Compute each component of solution vector starting at the last (xn)
     %and working your way backwards to x1. Each component is constructed
     %with knowledge from all previous
    for i = n:-1:1

        %For each component we need to compute a sum,
        %so set a sum variable to be zero for each, and accumalate 
        %result for each sum in this variable
        sum = 0;
        for j = i+1 : n
            sum = sum + U(i,j)*x(j);
        end

        %apply final division for each component of vector x.
        x(i) = (1/U(i,i))*(b(i)-sum);
    end

end