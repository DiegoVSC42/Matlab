function altera_green(x)

% procedimento para alterar o vermelho (incrementalmente)

%[L,C] = size(x)
y = x;

for nivel_verde = 0:40:255

    figure;
    y(:,:,2) = nivel_verde;
    imshow(y);
end