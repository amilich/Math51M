function [] = circleexercise(c1,c2,r)
theta = (0:.1:2*pi)';
x = r*cos(theta) + c1;
y = r*sin(theta) + c2;
plot(x,y)
end