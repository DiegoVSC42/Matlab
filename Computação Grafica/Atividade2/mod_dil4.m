function resposta = mod_dil4(respDilHor,numHor,denHor,numVer,denVer)

respDilHor = double(rgb2gray(respDilHor))/255;
[LdilH,CdilH] = size(respDilHor);
mascHorCom = [[(1/denHor):(1/denHor):1] [((denHor-1)/denHor):(-1/denHor):(1/denHor)]];
xHorCom = respDilHor;
xHorComConv = zeros(LdilH+length(mascHorCom)-1,CdilH);


for i = 1 : CdilH
    xHorComConv(:,i) = conv(xHorCom(:,i),mascHorCom);
end
resposta = xHorComConv;