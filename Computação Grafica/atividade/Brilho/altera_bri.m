function altera_bri(x)
    %mostra a imagem original
    imshow(x);
    figure;
    %converte a imagem para que o brilho possa ser alterado em
    %escala de cinza
    x = rgb2gray(x);
    x = double(x)/255;
    %mostra a imagem em escala de cinza
    imshow(x);
    figure;
    %tira a média dos valores da matriz para descobrir se a imagem é
    %subexposta ou superexposta
    if(mean(x(:))>0.5)
        %para imagens superexpostas foi utilizado esse valor que escurece o
        %suficiente para nao alterar muito a imagem
        x = x.^2.5;
    else
        %deixa a imagem mais clara caso ela seja subexposta de forma que
        %nao fique muito clara e fique perceptivel a diferença
        x = x.^0.75;
    end
       %mostra a imagem com a correção gamma 
        imshow(x);

end