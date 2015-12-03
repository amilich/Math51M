% Andrew Milich 
% 11/15/15
% Math 51M: Homework 4

%%%%%%%%%%%%%%
% Question 2 %
%%%%%%%%%%%%%%

% Histogram of random walks 

T = 100;
e = 0.2; 

Iterations = 5000;
results = (Iterations);

for i = 1:Iterations
    [x,t] = random_walk(T, e);
    results(i) = x(end);
end

histogram(results, 19)
xlabel('Final Position')
ylabel('Number of Walks')
title(['5000 Random Walks with e = ', num2str(e), ' and T = ', num2str(T)])