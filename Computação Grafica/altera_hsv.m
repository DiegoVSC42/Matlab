function altera_hsv(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;
imshow(y);
y = rgb2hsv(y);
for nivel_saturacao = 0.05:0.10:0.95
    figure;
    y(:,:,2) = nivel_saturacao;
    
    imshow(hsv2rgb(y));
end