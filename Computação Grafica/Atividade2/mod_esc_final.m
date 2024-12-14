function resposta = mod_esc_final(x,numHor,denHor,numVer,denVer)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% DILATACAO HORIZONTAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

respDilHor = xHorDilConvZ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% COMPRESSÃO HORIZONTAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[LH,CH] = size(respDilHor);
xHorCom = respDilHor;
mascHorCom = [[(1/denHor):(1/denHor):1] [((denHor-1)/denHor):(-1/denHor):(1/denHor)]];
mascHorCom = mascHorCom/denHor;
xHorConv = zeros(LH,CH+length(mascHorCom)-1);

for i = 1 : LH
    xHorConv(i,:) = conv(xHorCom(i,:),mascHorCom);
end

%resposta = xHorConv;

[LcomH,CcomH] = size(xHorConv);

CcomH = CcomH/denHor-1;

for i = 1 : LcomH
    cont = 0;
    for j = 1: CcomH
        xHorConvCom(i,j) = xHorConv(i,j+cont);
        cont = cont+denHor-1;
    end
end

%resposta = xHorConvCom;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% DILATACAO VERTICAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[LR,CR] = size(xHorConvCom);
xVerDil = zeros(LR*numVer,CR);
mascVerDil = [[(1/numVer):(1/numVer):1] [((numVer-1)/numVer):(-1/numVer):(1/numVer)]];

for j = 1 : CR
    cont = 0;
    for i = 1 : LR
        xVerDil(i+cont,j) = xHorConvCom(i,j);
        cont = cont + numVer-1; 
    end
end

xVerDilConv = zeros(numVer*LR+length(mascVerDil)-1,CR);

for i = 1 : CR
    xVerDilConv(:,i) = conv(xVerDil(:,i),mascVerDil);
end

for i = 1: CR
    xVerDilConvZ(:,i) = xVerDilConv(1:1:numVer*LR,i);
end

respDilVer = xVerDilConvZ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% COMPRESSÃO VERTICAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

respDilVer = transpose(respDilVer);
[LH,CH] = size(respDilVer);
xVerCom = respDilVer;
mascVerCom = [[(1/denVer):(1/denVer):1] [((denVer-1)/denVer):(-1/denVer):(1/denVer)]];
mascVerCom = mascVerCom/denVer;
xVerConv = zeros(LH,CH+length(mascVerCom)-1);

for i = 1 : LH
    xVerConv(i,:) = conv(xVerCom(i,:),mascVerCom);
end

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