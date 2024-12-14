function resposta = mod_dil(respDilHor,numHor,denHor,numVer,denVer)

%respDilHor = double(rgb2gray(respDilHor))/255;

[LdilH,CdilH] = size(respDilHor);
mascHorCom = [[(1/denHor):(1/denHor):1] [((denHor-1)/denHor):(-1/denHor):(1/denHor)]];
xHorCom = respDilHor;
xHorComConv = zeros(LdilH,CdilH+length(mascHorCom)-1);


%imshow(xHorCom);
%figure;


for i = 1 : LdilH
    xHorComConv(i,:) = conv(xHorCom(i,:),mascHorCom);
end


%imshow(xHorComConv);
%figure;

N = CdilH+length(mascHorCom)-1;
if(mod(N,2) == 0)
    xHorComConvZ = zeros(LdilH,N/denHor);
else
    xHorComConvZ = zeros(LdilH,N-3);
end
[LdilHR,CdilHR] = size(xHorComConv);

for i = 1: LdilHR
    cont = 0;
    if(mod(N,2) == 0)
        for j = 1 : CdilHR/denHor
            xHorComConvZ(i,j) = xHorComConv(i,j+cont);
            cont = cont+denHor-1;
        end
    else
        for j = 1 : CdilHR-3
            xHorComConvZ(i,j) = xHorComConv(i,j+cont);
            cont = cont+denHor-1;
        end
    end
end
%imshow(xHorComConvZ);
resposta = xHorComConvZ;