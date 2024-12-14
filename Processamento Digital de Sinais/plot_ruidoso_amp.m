function plot_ruidoso_amp
    
    impulso(1:500) = 0;
    impulso(101) = 1;
    
    h_i = acumulador(impulso);
    plot(h_i);title("Resposta ao impulso do integrador");figure;
    
    h_d = derivada_disc(impulso);
    plot(h_d);title("Resposta ao impulso da derivada discreta");figure;
    
    t = -5:0.01:5;
    x = sin(2*pi*t);
    amplitude_ruido = 0.3;
    x_ruidoso = x + amplitude_ruido*randn(1,length(t));
    
    plot(abs(fft(x_ruidoso)));title("Espectro de frequencias sinal ruidoso");figure;
    plot(abs(fft(h_i,10000)));title("Curva para a resposta em amplitude do integrador");figure;
    plot(abs(fft(h_d,10000)));title("Curva para a resposta em amplitude da derivada discreta");
end

