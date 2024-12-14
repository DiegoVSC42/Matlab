function y = modif_ton(x,d)
    x_hsi = rgb2hsv(x);
    x_hsi(:,:,1) = x_hsi(:,:,1)+d;
    y = hsv2rgb(x_hsi);
end
