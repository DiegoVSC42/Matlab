function [s, fs] = ruido_colorido()
     % Geração de senoide na frequência "f1"
     fs = 44100; % Frequência de amostragem (Hz)
     f1 = 5000; % Frequência da senoide (Hz)
     T = 3; % Duração (segundos)
     N = fs * T; % Número total de amostras
     A = 0.8; % Amplitude da senoide
     n = 0:N-1 ; % Índices das amostras
     t = 0:1/fs:T; % Índices de tempo (segundos)
     s = A * sin (2*pi*f1*t); % Amostras da senoide
     % sound(s, fs); % Reprodução no alto-falante
end
