function [result] = trapezoidal(a,b,n)

      y1 = test_function(a);
      y2 = test_function(b);
      Delta = (b-a)/n;

      result = y1+y2;
      for i = 2:n-1
        x  = a + (i-1)*Delta;
        [y] = test_function(x);
        result = result + 2*y;
      end

      result = (Delta/2)*result;
end