function resposta = mod_esc10(x,numHor,denHor,numVer,denVer)

[LR,CR] = size(x);
xVerDil = zeros(LR*numVer,CR);
mascVerDil = [[(1/numVer):(1/numVer):1] [((numVer-1)/numVer):(-1/numVer):(1/numVer)]];
for j = 1 : LR
    cont = 0;
    for i = 1 : CR
        xVerDil(i+cont,j) = x(i,j);
        cont = cont + numVer-1;
    end
end

xVerDilConv = zeros(numVer*LR+length(mascVerDil)-1,CR);

for i = 1 : CR
    xVerDilConv(:,i) = conv(xVerDil(:,i),mascVerDil);
end


for i = 1: CR
    xVerDilConvZ(:,i) = xVerDilConv(1:1:numVer*L,i);
end

resposta = xVerDilConvZ;