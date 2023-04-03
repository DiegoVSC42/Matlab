function altera_hue(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;
imshow(y);
y = rgb2hsv(y);
for nivel_tonalidade = 0.05:0.10:0.95
    figure;
    y(:,:,1) = nivel_tonalidade;
    
    imshow(hsv2rgb(y));
end