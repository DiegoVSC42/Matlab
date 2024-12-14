function resp = mod_esc3 (x,numH,denH,numV,denV)


[L,C] = size(x);

xD = zeros(numH*L,numH*C);

[DHL,DHC] = size(xD);

for k = 1 : L
    i = k*numH-1;
    for l = 1 : C
        j = l*numH-1;  
        xD(i,j) = x(k,1);
    end
end
xD