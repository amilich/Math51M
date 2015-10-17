% want to check if the last column hsa a pivot 
% we'll also assume that it doesn't and then check each row to see if there
% is a pivot in the last column

function result = isInSpan(A,b)
    result = true; 
    rrefdAugMatrix = rref([A,b]); 
    [numRows, nulCols] = size(rrefdAugMatrix); 
    for row=1:numRows
        if (all(rrefdAugMatrix(row,1:(end-1)) == 0) && (rrefdAugMatrix(row, end) == 1))
            result = false; 
            return 
        end
    end 
end

% this also works 

% function result = isInSpan(A,b)
%     result = all(A * (A\b) == b)
% end 