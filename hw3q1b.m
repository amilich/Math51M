% Andrew Milich 
% 10/28/15
% Math 51M: Homework 3

%%%%%%%%%%%%%%
% Question 1b %
%%%%%%%%%%%%%%

G = exp(2*pi*1i*x*(pi/7)) + exp(2*pi*1i*x*(6/7)); 
G_r = real(G); 
G_i = imag(G); 
% Again, separate G into real and imag
plot(x, G_r, 'b', x, G_i, 'r'); 
legend('real', 'imaginary');
title('Imaginary and real parts of G');
xlabel('x');
ylabel('f(x)')