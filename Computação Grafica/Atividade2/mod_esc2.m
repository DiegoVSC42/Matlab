function resp = mod_esc2 (x,numH,denH,numV,denV)

    [L,C] = size(x);
    Nh = numH/denH;
    xh = zeros(numH*L,numH*C);
    wh_dil = ones(1,numH)/numH;
    wh_com = ones(1,denH)/denH;
    [Lxh,Cxh] = size(xh);
    
    for i = 1 : numH : Lxh
        for j = 1: numH : Cxh
            for k = 1: 1 : L
                for l = 1: 1 : C
                    xh(i,j) = x(k,l);
                end
            end
        end
    end
    xh
    for i = 1 : Lxh
        resp(i,:) = conv(xh(:,i),wh_dil);
    end
    resph = resp
    
    [L_resph,C_resph] = size(resph);
    for i = 1 : L_resph
        resp(i,:) = conv(resph(i,:),wh)
    end
    resph = resp
   