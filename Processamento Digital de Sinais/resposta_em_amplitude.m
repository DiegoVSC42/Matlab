%% Algoritmo que retorna a resposta em amplitude de um sinal
function H = resposta_em_amplitude(h)

omega =  0 : 0.01 : pi;

H = zeros(1,length(omega));

n = 0 : length(h)-1;

for k = 1 : length(omega)

    H(k) = sum(h .* exp(-1j * omega(k) * n));

end

plot(omega,abs(H));
    
end