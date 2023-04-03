function altera_rgb(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;

for nivel_vermelho = 0:40:255

    y(:,:,1) = nivel_vermelho;
    close all
    imshow(y);
    pause;
    close all
end