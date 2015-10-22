function M = myMagic(n) 

if (mod(n, 2) == 1)
    M = oddMagic(n); 
    return 
end 

if (mod(n, 4) == 0)
    M = fourMagic(n); 
    return 
end

M = twoMagic(n);

end