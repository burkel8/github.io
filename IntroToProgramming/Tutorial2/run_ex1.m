N = 10; %Define number for which we want to compute its factorial

%Call all three implementations of factorial function
[ans_1] = my_factorial1(N);
[ans_2] = my_factorial2(N);
[ans_3] = my_factorial3(N);

%Call built in matlab factorial function on N to see what answer MATLAB
%gives
matlab_ans = factorial(N);

%Check if all three answers we got agree with MATLAB
if ((ans_1 == matlab_ans) && (ans_2 == matlab_ans) && (ans_3 == matlab_ans))
    fprintf("\nAll 3 implementations of factorial are correct!\n");
else
    fprintf("\nNot all versions are working correctly!\n");
end