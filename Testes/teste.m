function teste
    
    x = [1 1 1 0 0]
    for i = length(x) : -1 : 2
        x(i) = x(i - 1);
        x(i-1) = 0;
    end
    x
end