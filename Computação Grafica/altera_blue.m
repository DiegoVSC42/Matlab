function altera_blue(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;

for nivel_azul = 0:40:255
    figure;
    y(:,:,3) = nivel_azul;
    imshow(y);
end