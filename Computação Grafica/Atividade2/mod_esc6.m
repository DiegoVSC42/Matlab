function resp = mod_esc6(x,numHor,denHor,numVer,denVer)

%x = double(rgb2gray(x))/255;

[L,C] = size(x);
xVerDil = zeros(L*numVer,C);
mascVerDil = [[(1/numVer):(1/numVer):1] [((numVer-1)/numVer):(-1/numVer):(1/numVer)]];

for j = 1 : C
    cont = 0;
    for i = 1 : L
        xVerDil(i+cont,j) = x(i,j);
        cont = cont + numVer-1; 
    end
end

xVerDilConv = zeros(numVer*L+length(mascVerDil)-1,C);

for i = 1 : C
    xVerDilConv(:,i) = conv(xVerDil(:,i),mascVerDil);
end

for i = 1: C
    xVerDilConvZ(:,i) = xVerDilConv(1:1:numVer*L,i);
end

resp = xVerDilConvZ;