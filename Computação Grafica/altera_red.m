function altera_red(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;

for nivel_vermelho = 0:40:255

    figure;
    y(:,:,1) = nivel_vermelho;
    imshow(y);
end