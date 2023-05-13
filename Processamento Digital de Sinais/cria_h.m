function cria_h()
    h = zeros(1,100);
    for i = 1 : 2 : 100
        h(i) = 5/(2^i);
    end
    
    h
    
    sum(h)
end