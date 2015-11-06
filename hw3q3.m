% Andrew Milich 
% 10/28/15
% Math 51M: Homework 3

%%%%%%%%%%%%%%
% Question 3 %
%%%%%%%%%%%%%%

drawrate = 50; % rate for adding points to line
h = animatedline;
title('Lissajous Curve');
xlabel('x');
ylabel('y');
axis([-1.1,1.1,-1.1,1.1])
t = linspace(0.0,2*pi,1000); % enclose the entire figure 
for k = 1:length(t)
    pause(0.01)
    addpoints(h,cos(5*t(k)),sin(7*t(k)));
    if (mod(k, drawrate) == 0)
        drawnow
    end
end