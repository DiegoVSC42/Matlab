function resp = mod_esc8(x,numHor,denHor,numVer,denVer)

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


[LR,CR] = size(resp);
xVerDil = zeros(LR*numVer,CR);
mascVerDil = [[(1/numVer):(1/numVer):1] [((numVer-1)/numVer):(-1/numVer):(1/numVer)]];
for j = 1 : LR
    cont = 0;
    for i = 1 : CR
        xVerDil(i+cont,j) = resp(i,j);
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

resp = xVerDilConvZ;

