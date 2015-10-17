function result = intersectPlanes(v1, v2, w1, w2)
    mat = [v1,v2,w1,w2]'; 
    rrefMat = rref(mat);
    [numRows, nulCols] = size(rrefMat); 
    for row=1:numRows
        if (all(rrefMat(row,1:(end-1)) == 0) && (rrefMat(row, end) == 1))
            result = false; 
            return 
        end
    end 
    result = rrefMat; 
end