function matriz = pendulo3(i_inicial,j_inicial,angulo_inicial,gravidade,comprimento,vetor_t,L,C)

%function matriz = pendulo(i_inicial,j_inicial,angulo_inicial,gravidade,comprimento,vetor_t,L,C)
%qtd_frames = length(vetor_t)
%angulo_res = angulo_inicial*cos(sqrt(gravidade/comprimento)*vetor_t(i);
%ang = round(length(vetor_t)/2)-1

for cont = 1 : length(vetor_t)
    
    angulo_res = angulo_inicial*cos(sqrt(gravidade/comprimento)*vetor_t(cont));

    i_final = abs(round(i_inicial+comprimento*cos(angulo_res)));
    j_final = abs(round(j_inicial+comprimento*sin(angulo_res)));
    
    
    reta = rast_ret2(i_inicial,j_inicial,i_final,j_final,L,C);

    if L > C
        raio = round(L/50);
    else
        raio = round(C/50);
    end
    
    circ = rast_circ(i_final,j_final,raio,L,C);
    matriz = zeros(L,C);

    for i = 1:L
        for j = 1:C

            if(reta(i,j) == 1 || circ(i,j) == 1)
                matriz(i,j) = 1;

            end
        end
    end
    figure;
    imshow(matriz);
    imwrite(matriz,'1.jpg');
    
end


    