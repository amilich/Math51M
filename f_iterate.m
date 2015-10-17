function [x] = f_iterate(f,n,x)
for i = 1:n
 x = f(x);
end
end