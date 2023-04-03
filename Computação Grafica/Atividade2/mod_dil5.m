function resposta = mod_dil5(respDilVer,numHor,denHor,numVer,denVer)

%respDilVer = double(rgb2gray(respDilVer))/255;

[LcomV,CcomV] = size(respDilVer)
mascVerCom = [[(1/denVer):(1/denVer):1] [((denVer-1)/denVer):(-1/denVer):(1/denVer)]]

xVerCom = respDilVer;
xVerComConv = zeros(LcomV+length(mascVerCom)-1,CcomV);

for i = 1 : CcomV
    xVerComConv(:,i) = conv(xVerCom(:,i),mascVerCom);
end

resposta = xVerComConv

for i = 1: CcomV
    xVerComConvZ(:,i) = xVerComConv(1:1:denVer*LcomV,i);
end
resposta = xVerComConvZ