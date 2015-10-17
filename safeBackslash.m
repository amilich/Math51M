function result = safeBackslash(A, b)
% m = rref([A,b]); 
% m = m(any(m,2),:); 
% x = (m(:, end-1)) \ (m(:, end)); 

rrefdA = rref([A, b]); 
while (all(rrefdA(end, :) == 0)) 
    rrefdA = rrefdA(1:end-1, :)
end 

newA = rrefdA(:, 1:end-1); 
newb = rrefdA(:, end); 
result = newA \ newb; 

end 