% Andrew Milich 
% 11/15/15
% Math 51M: Homework 4

%%%%%%%%%%%%%%
% Question 2 %
%%%%%%%%%%%%%%

% Plot of single walk - 1 simulation

T = 100;
e = 0.2;
[x,t] = random_walk(T, e);
plot(t, x, 'r')
title([int2str(T), ' Step Random Walk With e=', num2str(e)])
xlabel('time')
ylabel('x')
xlim([0,T])