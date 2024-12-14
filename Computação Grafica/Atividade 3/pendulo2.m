function matriz = pendulo2(i_inicial,j_inicial,angulo_inicial,gravidade,comprimento,vetor_t,L,C)

qtd_frames = length(vetor_t);
i_final = i_inicial + comprimento;
j_final = j_inicial + comprimento;

reta = rast_ret2(i_inicial,j_inicial,i_final,j_final,L,C);

circ = rast_circ(i_final,j_final,2,L,C);
for i = 1: length(vetor_t)

    angulo_res = angulo_inicial*cos(sqrt(gravidade/comprimento)*vetor_t(i));

end
matriz = zeros(L,C);

for i = 1:L
    for j = 1:C

        if(reta(i,j) == 1 || circ(i,j) == 1)
            matriz(i,j) = 1;
        end
    end
end

    