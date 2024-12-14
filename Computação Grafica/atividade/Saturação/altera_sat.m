function altera_sat(x)

%Procedimento para alterar a saturação de uma imagem
y = x;
%mostra a imagem original para que possa ver as alteracoes
imshow(y);
%converte a imagem do espectro RGB para o HSV, assim podendo alterar a
%saturacao da mesma
y = rgb2hsv(y);
%mostra na tela a imagem com saturacao alterada, comecando sem
%saturacao, aumentando 10% por ciclo e incrementando ate chegar em 100%
for nivel_saturacao = 0:0.10:1
    figure;
    y(:,:,2) = nivel_saturacao;
    
    imshow(hsv2rgb(y));
end