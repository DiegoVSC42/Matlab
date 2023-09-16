function f_mediana = freq_mediana(x, fs)
     % f_mediana = frequência (em hertz) mediana do sinal cujas amostras
     % estão no vetor 'x'
     % fs: frequência de amostragem (em hertz) do sinal


     X = fft(x);
     L = length(X);
     k = (0:L/2-1);
    
     dsp = abs(X(1:L/2)).^2;
    
     [~, seq_ordenada] = sort(dsp, 'descend');
     k_ordenado = k(seq_ordenada);
    
     if mod(L, 2) == 1
          k_mediana = k_ordenado(L/2);
     else
          k_mediana = mean(k_ordenado(L/2:L/2+1));
     end
    
     f_mediana = (fs / L) * k_mediana;
end
