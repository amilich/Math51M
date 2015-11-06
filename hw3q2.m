% Andrew Milich 
% 10/28/15
% Math 51M: Homework 3

%%%%%%%%%%%%%%
% Question 2 %
%%%%%%%%%%%%%%

x = -4:.1:4; y = -3:.1:3;
[X,Y] = meshgrid(x,y);
Z = (X.^2 + Y.^2).^(0.5);
surf(X,Y,Z);
hold on;
Z = 1 + 0.5*X + 0.5*Y; 
hSurface = surf(X,Y,Z);
% Setting this plane as one color makes it easy to see intersection
set(hSurface, 'FaceColor',[1 0.5 0.5], 'FaceAlpha',0.8, 'EdgeAlpha', 0.3);
axis([-4 4 -3 3 -5 20])
xlabel('x');
ylabel('y')
zlabel('z')
title('HW 3 Q2')