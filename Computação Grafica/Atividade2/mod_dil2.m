function resposta = mod_dil2(respDilVer,numHor,denHor,numVer,denVer)

respDilVer = double(rgb2gray(respDilVer))/255;
[LdilV,CdilV] = size(respDilVer);
mascVerCom = [[(1/denVer):(1/denVer):1] [((denVer-1)/denVer):(-1/denVer):(1/denVer)]];
xVerCom = respDilVer;
xVerComConv = zeros(LdilV+length(mascVerCom)-1,CdilV);


for i = 1 : LdilV
    xVerComConv(:,i) = conv(xVerCom(:,i),mascVerCom);
end

xVerComConv


N = LdilV+length(mascVerCom)-1;
if(mod(N,2) == 0)
    xVerComConvZ = zeros(N/denVer,CdilV);
else
    xVerComConvZ = zeros(N-3,CdilV);
end
[LdilVR,CdilVR] = size(xVerComConv);

for j = 1: LdilVR
    cont = 0;
    if(mod(N,2) == 0)
        for i = 1 : CdilVR/denVer
            xVerComConvZ(i,j) = xVerComConv(i+cont,j);
            cont = cont+denVer-1;
        end
    else
        for j = 1 : CdilVR-3
            xVerComConvZ(i,j) = xVerComConv(i+cont,j);
            cont = cont+denVer-1;
        end
    end
end

resposta = xVerComConvZ;