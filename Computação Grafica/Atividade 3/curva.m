function matrix = curva(x,y,L,C)

matrix = zeros(L,C);
if size(x) > size(y)
    [L2,C2] = size(x);
    tam = C2;
else
    [L2,C2] = size(y);
    tam = C2;
end

for cont = 1 :tam
    par = SRNtoSRD(x(cont),y(cont),L,C);
    for i = 1 : L
        if i == par(1,1)
            for j = 1: C
                if j == par(1,2)
                    matrix(i,j) = 1;
                end
            end
        end
    end
    
           
end
imshow(matrix);