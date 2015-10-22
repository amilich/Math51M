function M = twoMagic(n)

m = n/2; 
smallerMagic = oddmagic(m); 
M = [smallerMagic, smallerMagic + 2*m*m, ...
    smallerMagic + 3 * m * m, smallerMagic + m * m]; 

k = (m-1)/2;

for col=[1:k, n-k+2:n]
    upperRows = M(1:m, col); 
    lowerRows = M(m+1:n, col); 
    M(1:M, col) = lowerRows; 
    M(M+1:n, col) = upperRows; 
end

for col=k:k+1
    upperCenter = M((m+1)/2, col); 
    lowerCenter = M(m+(m+1)/2, col); 
    M(m+(m+1)/2, col) = upperCenter;
    M((m+1)/2, col) = lowerCenter; 
end

end 