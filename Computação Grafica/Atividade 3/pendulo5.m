function matriz = pendulo5(i_inicial,j_inicial,angulo_inicial,gravidade,comprimento,vetor_t,L,C)

matriz = zeros(L,C);

angulo_res = angulo_inicial*cos(sqrt(gravidade/comprimento));
i_final = round(i_inicial+comprimento*cos(angulo_res))
j_final = round(j_inicial+comprimento*sin(angulo_res))

%imshow(matriz);
%figure;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Rasterizando a reta %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% if i_inicial > i_final
%     aux = i_inicial;
%     i_inicial = i_final;
%     i_final = aux;
% end
% if j_inicial > j_final
%     aux = j_inicial;
%     j_inicial = j_final;
%     j_final = aux;
% end
% delta_i = i_final - i_inicial;
% delta_j = j_final - j_inicial;
% 
% if(delta_i <= delta_j)
%     m = delta_i/delta_j;
%     for j = j_inicial:j_final
%         matriz(round(i_inicial + m*(j-j_inicial)),j) =  1;
%     end
%     
% else
%     m = delta_j/delta_i;
%     for i = i_inicial:i_final
%         matriz(i,round(j_inicial + m*(i-i_inicial))) =  1;
%     end
% end
matriz = rast_ret2(i_inicial,j_inicial,i_final,j_final,L,C)

%imshow(matriz);
%figure;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% Rasterizando o circ %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% raio = 1;
% 
% for Di = 0 - raio : raio
%     
%     i = i_inicial + Di;
%     L_final = round(sqrt((raio^2)-(Di)^2));
%         
%     for j = j_inicial- L_final : j_inicial + L_final
%         matriz(i,j) = 1;
%     end
% end
% imshow(matriz);
