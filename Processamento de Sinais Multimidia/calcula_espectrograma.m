function [X, peak_freq] = calcula_espectrograma(x, janela, fs)
    % x: vetor contendo as amostras do sinal x[n]
    % janela: duração da janela para o cálculo da DFT (em amostras)
    % fs: frequência de amostragem do sinal
    
    % Número de amostras no sinal de entrada
    N = length(x);
    
    % Número de pontos na DFT
    NFFT = 2^nextpow2(janela);
    
    % Número de trechos
    num_trechos = floor(N / janela);
    
    % Inicialize a matriz X para armazenar o espectrograma
    X = zeros(NFFT/2, num_trechos);
    
    % Inicialize o vetor para armazenar as frequências de pico
    peak_freq = zeros(num_trechos, 1);
    
    for n = 1:num_trechos
        % Selecione a janela atual
        janela_atual = x((n-1)*janela+1:n*janela);
        
        % Aplique a transformada de Fourier na janela atual
        X(:, n) = abs(fft(janela_atual, NFFT)) / janela;
        
        % Encontre a frequência de pico para esta janela
        [~, indice_pico] = max(X(:, n));
        % Converta o índice de frequência para Hertz
        freq_pico = (indice_pico - 1) * fs / NFFT;
        peak_freq(n) = freq_pico;
    end
end
