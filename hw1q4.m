% Andrew Milich 
% 10/5/15
% Math 51M: Homework 1

%%%%%%%%%%%%%%
% Question 4 %
%%%%%%%%%%%%%%

% Iterative calculator for nth, n+1th, n+2nd fibonacci 
% numbers. Returns the nth, n+1th, and n+2nd fibonaccis. 

function fibonaccis = hw1q4(n) 
    clearvars -except n;

    f1 = 1;
    f2 = 1;
    f3 = 2;
   
    for i = 1:n
        temp_f2 = f2; 
        f3 = f3 + f2; % new fibonacci number
        f2 = f2 + f1; % this is what f3 was 
        f1 = temp_f2; 
    end
    fibonaccis = [f1, f2, f3]; 
    
    % MATLAB will not print numbers greater than 1.0e+6 without scientific
    % notation, so we use format short. Note: this increases the time of
    % each function, so I omitted it for the purposes of q6. 
    % format short 
end





