function dimension = findDimension(M)
% look at the NUMBER of pivots 
rrefdM = rref(M); 
rowHasAPivot = any(rrefdM, 2);  
dimension = sum(rowHasAPivot);
end 