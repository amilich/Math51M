% Andrew Milich 
% 10/28/15
% Math 51M: Homework 3

%%%%%%%%%%%%%%
% Question 1a %
%%%%%%%%%%%%%%

syms x
x = 0:0.1:35; 
F = exp(2*pi*1i*x*(3/7)) + exp(2*pi*1i*x*(6/7));
F_r = real(F); 
F_i = imag(F); 
% Plot F real and F imaginary 
plot(x, F_r, 'b', x, F_i, 'r');
legend('real', 'imaginary');
% Set labels, title
title('Imaginary and real parts of F');
xlabel('x');
ylabel('f(x)');