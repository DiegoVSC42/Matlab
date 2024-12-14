n = -1000:1000;
x = cos(0.0075*pi*n); % senoide limpa
r = 0.35*randn(1,length(x)); % ruído de amplitude igual a 35% da amplitude da senoide
x_r = x + r; % senoide ruidosa
plot(x);title("Sinal Original"); figure; plot(x_r);title("Sinal Ruidoso");figure; % compare os gráficos do sinal limpo e ruidoso

y = cumsum(x); % sinal filtrado se não houvesse ruído (referência para cálculoda SNR final)
y_r = cumsum(x_r); % sinal ruidoso filtrado
plot(y);title("Sinal Filtrado Pelo Acumulador"); figure; plot(y_r);title("Sinal Ruidoso Filtrado Pelo Acumulador");
SNR_dB_inicial = 10*log10(sum( (x).^2 )/sum( ( x - x_r).^2 ))
SNR_dB_final = 10*log10(sum( (y).^2 )/sum( (y - y_r).^2 ))
% Veja o ganho de SNR, da seguinte maneira:
Ganho_SNR_dB = SNR_dB_final - SNR_dB_inicial

y = [x(1) (x(2:end)- x(1:end-1))];
y_r = [x_r(1) (x_r(2:end) - x_r(1:end-1))];
SNR_dB_inicial = 10*log10(sum( (x).^2 )/sum( (x - x_r).^2 ))
SNR_dB_final = 10*log10(sum( (y).^2 )/sum( (y - y_r).^2 ))
Ganho_SNR_dB = SNR_dB_final - SNR_dB_inicial