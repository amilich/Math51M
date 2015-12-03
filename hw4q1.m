% Andrew Milich 
% 11/15/15
% Math 51M: Homework 4

%%%%%%%%%%%%%%
% Question 1 %
%%%%%%%%%%%%%%

% We can see clearly that higher values of b will increase the rate of 
% infection and the numebr of infected. 

% Thus, b=1 demonstrates the greatest increase in the infected population and 
% b=0 represents no spreading. b=0.01 would be a bad disease as only a few
% percent of the population ever gets the disease. In this case, infection
% is controlled. 

% By b=0.25, around 90% of the population has been infected by the disease. 
% For 0.25<b<1, the infection continues to spread to the remainder of the
% population. By b=0.4, over 95% of the population appears to be infected.
% b=0.25 is a realistic model of a very infectious disease while b=0.01
% would be a controlled infection. 

b = 0.25; 
a = 0.1; 

T = [0 500];
% x(1) = S; x(2) = I; x(3) = R (based on assignment spec) 
f = @(t,x) [-b*x(2)*x(1); b*x(2)*x(1) - a*x(2); a*x(2)];
[t,S] = ode45(f, T, [0.99 0.01 0]); 
plot(t,S);
legend('Susceptible','Infected','Recovered');
xlabel('Time');
ylabel('Percentage of people');
title(['SIR Infection Model, b=',num2str(b)]);