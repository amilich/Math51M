% Andrew Milich 
% 10/17/15
% Math 51M: Homework 2

%%%%%%%%%%%%%%
% Question 4 %
%%%%%%%%%%%%%%

% Fixed point iteration. %

function point = hw2q4(f, point, iterations)
    A = zeros(1, iterations);
    A(1) = point;
     
    for i = 1:iterations
        A(i+1) = f(A(i));
    end
    point = A(end); 
end