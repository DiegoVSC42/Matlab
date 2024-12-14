function y = equaliza_cor(img,rgb)
    x = double(img)/255;
    for i = 1 : 3
        x(:,:,i) = img(:,:,i)*rgb(i);
    end
    max_x = max(x(:));
    y = x/max_x;
end