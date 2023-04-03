function y = produto_interno(x1,x2)
% Funзгo que calcula o produto interno entre x1 e x2
% x1 e x2 devem ter o mesmo tamanho

TAM = length(x1);
y = 0;
for k = 1:TAM
    
    y = y + x1(k)*x2(k);
    
end