function M = oddmagic(n)
    M = zeros(n); 
    row = 1; 
    col = (n+1)/2; 
    
    for k = 1:n*n 
        M(row, col) = k; 
        
        if (mod(k, n) == 0)
            row = row + 1; 
            if (row > n) 
                row = row - n; 
            end
            continue
        end
        
        row = row - 1; 
        col = col + 1;
        if (row < 1)
            row = row + n; 
        end 
        if (col > n)
            col = col - n; 
        end
    end 
end