% Andrew Milich 
% 10/5/15
% Math 51M: Homework 1

%%%%%%%%%%%%%%
% Question 6 %
%%%%%%%%%%%%%%

clearvars 
tic
a = hw1q4(25); % this assigns the first one 
toc
tic
f = hw1q5(25); 
toc

% The recursive implementation is far slower than
% the iterative fibonacci calculator. This is likely because the 
% computer calculates each fibonacci number multiple times during 
% recursion (actually, the number of times each value is calculated 
% follows the fibonacci sequence as well). We can draw a tree of 
% each number calculated by recursion - f(25 requires f(24) and f(23); 
% immediately, we see f(23) is calculated by both branches of this tree.
% f(25) is calculated once, f(24) once, and f(23) twice (etc.). 
% Thus, the recursive algorithm, though more concise, is far more 
% inefficient than a single for loop that iteratively adds values. 
