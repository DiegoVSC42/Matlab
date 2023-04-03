function resposta = mod_com2(respDilVer,numHor,denHor,numVer,denVer)

respDilVer = double(rgb2gray(respDilVer))/255;
respDilVer = transpose(respDilVer);
[LH,CH] = size(respDilVer);
xVerCom = respDilVer;
mascVerCom = [[(1/denVer):(1/denVer):1] [((denVer-1)/denVer):(-1/denVer):(1/denVer)]];
mascVerCom = mascVerCom/denVer;
xVerConv = zeros(LH,CH+length(mascVerCom)-1);

for i = 1 : LH
    xVerConv(i,:) = conv(xVerCom(i,:),mascVerCom);
end

resposta = xVerConv;

[LcomH,CcomH] = size(xVerConv);

CcomH = CcomH/denVer-1;

for i = 1 : LcomH
    cont = 0;
    for j = 1: CcomH
        xVerConvCom(i,j) = xVerConv(i,j+cont);
        cont = cont+denVer-1;
    end
end

resposta = xVerConvCom;
       
resposta = transpose(resposta);
