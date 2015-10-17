% Andrew Milich 
% 10/5/15
% Math 51M: Homework 1

%%%%%%%%%%%%%%
% Question 5 %
%%%%%%%%%%%%%%

% Recursive fibonacci calculator. 
% Returns the nth fibonacci number. 

function f = hw1q5(n)
    if n == 1 || n == 0
        f = 1;
    else
        f = hw1q5(n-2) + hw1q5(n-1); % f(n) = f(n-1)+f(n-2)
    end 
end 