function resp = mod_esc4 (x,numH,denH,numV,denV)

x
[L,C] = size(x);

xHD = zeros(L,numH*C);
wHD = ones(1,numH);
wHC = ones(1,denH)/denH;

for i = 1 : L
    for j = 1 : C
        if(j == 1)
            xHD(i,j) = x(i,j);
        else
            xHD(i,j+numH-1) = x(i,j);
        end
    end
end
Dilatado_pelo_numerador_horizontal = 0
xHD
Mascara_do_numerador_horizontal = 0
wHD
Convolucao_matriz_mascara_horizontal = 0

xHDR = conv(xHD,wHD);
xHDR
[Lh,Ch] = size(xHD);

%for i = 1 : Lh
 %   for j = 1 : Ch
  %      xDR2(i,j) = xDR(i,j);
   % end
%end
%resp = xDR2;
resp = xHDR;
convolucao_matriz_resultante_com_mascara_denominador = 0
xHDR3 = conv2(xHDR,wHC);
xHDR3
xHDR4 = zeros(L,numH*C);
for i = 1 : Lh
    for j = 1 : Ch - 1
        %i
        %j
        %xHDR3
        %xHDR3(i,j)
        %xHDR3(i,j*denH-1)
        if(j == 1)
            %xHDR4(i,j) = xHDR3(i,j)
            xHDR4(i,j) = xHDR3(i,j);
        else
            %xHDR4(i,j) = xHDR3(i,j*denH-1)
            xHDR4(i,j) = xHDR3(i,j*denH-1);
        end
    end
end

compressao_pelo_denominador_horizontal = 0

xHDR4


