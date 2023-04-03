function resp = mod_esc9(x,numHor,denHor,numVer,denVer)

x = double(rgb2gray(x))/255;

[L,C] = size(x);

xHorDil = zeros(L,numHor*C);

mascHorDil = [[(1/numHor):(1/numHor):1] [((numHor-1)/numHor):(-1/numHor):(1/numHor)]];

for i = 1 : L
    cont = 0;
    for j = 1 : C
        xHorDil(i,j+cont) = x(i,j);
        cont = cont + numHor-1; 
    end
end

xHorDilConv = zeros(L,numHor*C+length(mascHorDil)-1);

for i = 1 : L
    xHorDilConv(i,:) = conv(xHorDil(i,:),mascHorDil);
end

for i = 1: L
    xHorDilConvZ(i,:) = xHorDilConv(i,1:1:numHor*C);
end

resp = xHorDilConvZ;