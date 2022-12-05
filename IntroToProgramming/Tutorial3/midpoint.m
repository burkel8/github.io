function [result] = midpoint(a,b,n)

      result = 0;

      Delta = (b-a)/n;

      for i = 1:n
             
        xim1  = a + (i-1)*Delta;
        xi = xim1 + Delta;
        midx = (xim1 + xi)/2;
        [y] = test_function(midx);
        result = result + y*Delta;
      end
end