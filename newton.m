clear 
n = 10; 
f= @(x) x.^2 - n; 
df = @(x) 2*x; 

A(1) = 5; % initial guess 
maxsteps = 100; 
tol = 0.00000000001; 

for i = 1:maxsteps 
    currentguess = f(A(i)); 
    if abs(currentguess) < tol 
        break 
    end 
    temp = df(A(i)); 
    if abs(temp) < 0.1 
        % derivative too close to 0
        break 
    end 
    A(i+1) = A(i) - f(A(i))/df(A(i)); 
end

