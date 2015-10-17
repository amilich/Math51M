function [numSteps] = collatz(n)
disp(n);
if (n == 1)
 numSteps = 1;
else
 if (mod(n, 2) == 0)
 nextNumber = n / 2;
 else
 nextNumber = 3 * n + 1;
 end
 numSteps = 1 + collatz(nextNumber);
end
end