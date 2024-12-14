function resp = mod_esc7(x,numHor,denHor,numVer,denVer)

%display('Matriz original')
%x
%imshow(x);
%figure;
[L,C] = size(x);
xHorDil = zeros(L,numHor*C);
%display('Mascara')
mascHorDil = [[(1/numHor):(1/numHor):1] [((numHor-1)/numHor):(-1/numHor):(1/numHor)]];

for i = 1 : L
    cont = 0;
    for j = 1 : C
        xHorDil(i,j+cont) = x(i,j);
        cont = cont + numHor-1; 
    end
end

%display('Matriz com adicao dos zeros')
%xHorDil
%imshow(xHorDil);
%figure;
xHorDilConv = zeros(L,numHor*C+length(mascHorDil)-1);

for i = 1 : L
    xHorDilConv(i,:) = conv(xHorDil(i,:),mascHorDil);
end
    %imshow(xHorDilConv);

%display('Matriz com adicao dos zeros e convoluida com mascara')
%xHorDilConv

for i = 1: L
    xHorDilConvZ(i,:) = xHorDilConv(i,1:1:numHor*C);
end

%display('Matriz com adicao dos zeros, convoluida com mascara e sem os zeros no final')
%xHorDilConvZ


resp = xHorDilConvZ;

[LR,CR] = size(resp);
xVerDil = zeros(LR*numVer,CR);
mascVerDil = [[(1/numVer):(1/numVer):1] [((numVer-1)/numVer):(-1/numVer):(1/numVer)]];

display('matriz')
x
resp


for j = 1 : LR
    cont = 0;
    for i = 1 : CR
        xVerDil(i+cont,j) = resp(i,j);
        cont = cont + numVer-1; 
    end
end

%display('matriz dilatada na vertical')
%xVerDil

xVerDilConv = zeros(numVer*LR+length(mascVerDil)-1,CR);

for i = 1 : CR
    xVerDilConv(:,i) = conv(xVerDil(:,i),mascVerDil);
end

%display('matriz dilatada e convoluida')
%xVerDilConv

for i = 1: CR
    xVerDilConvZ(:,i) = xVerDilConv(1:1:numVer*LR,i);
end

%display('zeros removidos')
%xVerDilConvZ

resp = xVerDilConvZ;





