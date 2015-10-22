% Andrew Milich 
% 10/15/15
% Math 51M: Homework 2

%%%%%%%%%%%%%%
% Question 3 %
%%%%%%%%%%%%%%

% Zero finding by bisection search.%

function zero = hw2q3(f, lower_bound, upper_bound, iterations)
    u_bound = upper_bound; 
    l_bound = lower_bound; 
    
    for i = 1:iterations 
        midpoint = (u_bound+l_bound)/2; 
        f_midpoint = f(midpoint); 
        fup = f(u_bound); 
        if(f_midpoint*fup > 0)
            u_bound = midpoint; 
        else 
            l_bound = midpoint; 
        end
    end
    zero = (l_bound+u_bound)/2; 
end 