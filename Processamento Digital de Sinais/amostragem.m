function amostragem(N)

[b,a] = butter(4,0.25); % define a frequência máxima  normalizada (0.025) do sinal para simulação 

x = filter(b,a,randn(1,100000)); % cria um sinal x aleatório de baixa  frequência para amostragem 

p(1:length(x)) = 0; 	

%N = 15; % define o período de amostragem (em amostras) 

p(1:N:end) = 1; % cria um trem de impulsos com o período N definido 

pulso = [1 2 3 4 5 4 3 2 1]; % define o pulso de amostragem a ser utilizado 

p = conv(p,pulso); 

p = p(1:length(x)); 

xa = x.*p; % define o sinal amostrado 
plot(x);title("x");figure;plot(p);title("p");figure;plot(xa);title("xa");figure;

%plot(x,'b'); hold on ; plot(xa,'r');title("x & xa");

end