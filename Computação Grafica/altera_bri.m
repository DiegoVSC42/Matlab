function altera_bri(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;
imshow(y);
y = rgb2hsv(y);
for nivel_brilho = 0.05:0.10:0.95
    figure;
    y(:,:,3) = nivel_brilho;
    
    imshow(hsv2rgb(y));
end