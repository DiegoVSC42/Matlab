function x = rast_circ(i_inicial,j_inicial,raio,L,C)
    
    x = zeros(L,C);
    
    for Di = 0-raio : raio
    
        i = abs(i_inicial + Di);
        L_final = abs(round(sqrt((raio^2)-(Di)^2)));
        
        for j = abs(round(j_inicial - L_final)) : abs(round(j_inicial + L_final))
            x(i,j) = 1;
        end
    end
    %plot(x);
    %figure;
    %imshow(x);
    %figure;
    %stem(x);
    