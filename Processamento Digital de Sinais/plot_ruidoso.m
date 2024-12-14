function plot_ruidoso
    t = -5 : 0.01:5;
    x7 = sin(2*pi*t);
    stem(x7);
    title("Sinal X[n]");
    figure
    amplitude_ruido = 0;
    x7_ruidoso = x7 + amplitude_ruido * randn(1,length(t));
    y7a = acumulador(x7_ruidoso);stem(y7a);title("Resposta acumulador para amplitude = 0");
    figure
    y7d = derivada_disc(x7_ruidoso);stem(y7d);title("Resposta derivada discreta para amplitude = 0");
    figure
    amplitude_ruido = 0.5;
    x7_ruidoso = x7 + amplitude_ruido * randn(1,length(t));
    y7a = acumulador(x7_ruidoso);stem(y7a);title("Resposta acumulador para amplitude = 0.5");
    figure
    y7d = derivada_disc(x7_ruidoso);stem(y7d);title("Resposta derivada discreta para amplitude = 0.5");
    figure
    amplitude_ruido = 1;
    x7_ruidoso = x7 + amplitude_ruido * randn(1,length(t));
    y7a = acumulador(x7_ruidoso);stem(y7a);title("Resposta acumulador para amplitude = 1");
    figure
    y7d = derivada_disc(x7_ruidoso);stem(y7d);title("Resposta derivada discreta para amplitude = 1");
end

