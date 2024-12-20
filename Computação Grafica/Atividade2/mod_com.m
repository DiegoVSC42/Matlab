function resposta = mod_com(respDilHor,numHor,denHor,numVer,denVer)

respDilHor = double(rgb2gray(respDilHor))/255;
[LH,CH] = size(respDilHor);
xHorCom = respDilHor;
mascHorCom = [[(1/denHor):(1/denHor):1] [((denHor-1)/denHor):(-1/denHor):(1/denHor)]];
mascHorCom = mascHorCom/denHor;
xHorConv = zeros(LH,CH+length(mascHorCom)-1);

for i = 1 : LH
    xHorConv(i,:) = conv(xHorCom(i,:),mascHorCom);
end

resposta = xHorConv;

[LcomH,CcomH] = size(xHorConv);

CcomH = CcomH/denHor-1;

for i = 1 : LcomH
    cont = 0;
    for j = 1: CcomH
        xHorConvCom(i,j) = xHorConv(i,j+cont);
        cont = cont+denHor-1;
    end
end

resposta = xHorConvCom;


       

