function y = acumulador(x) 
    for i = 1 : length(x)
        if(i > 1)
            y(i) = x(i) + y(i-1);
        else
            y(i) = x(i);
        end
    end
end