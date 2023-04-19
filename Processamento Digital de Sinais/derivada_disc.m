function y = derivada_disc(x)
    for i = 1 : length(x)
        if(i > 1)
            y(i) = x(i)-x(i-1);
        else
            y(i) = x(i);
        end
    end
end