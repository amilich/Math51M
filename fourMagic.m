% not working 

function M = fourMagic(n)

dimIsCenter = @(n) (mod(n, 4) == 2) || (mod(n, 4) == 3); 
dimIsCorner = @(n) (mod(n, 4) == 0) || (mod(n, 4) == 1); 

cellIsCenter = @(row, col) any([dimIsCenter(row), dimIsCenter(col)]); 
cellIsCorner = @(row, col) any([dimIsCorner(row), dimIsCorner(col)]); 
cellIsMarked = @(row, col) any([cellIsCenter(row, col), cellIsCorner(row, col)]);

M = zeros(n); 
counting_up = 1; 
counting_down = n*n; 

for row = 1:n 
    for col = 1:n 
        
        if (cellIsMarked(row, col))
            M(row, col) = counting_up; 
        else 
            M(row, col) = counting_down; 
        end
        
        counting_up = counting_up + 1; 
        counting_down = counting_down - 1; 
    end
end

end