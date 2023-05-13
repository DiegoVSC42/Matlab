function H = mostra_sinal_fourier(Numerador,Const_soma,Const_mul_base,Const_mul_exp)
    omega = 0 : 0.001 : pi;
    H = Numerador./(Const_soma - Const_mul_base * exp(j * Const_mul_exp * omega));
    H_amp = abs(H);
    H_fase = angle(H);
    plot(H);title("Função de Transferencia");figure;
    plot(H_amp);title("Resposta em amplitude");figure;
    plot(H_fase);title("Resposta em fase");figure
    
    %ax1 = nexttile;
    %plot(ax1,H)
    %ax2 = nexttile;
    %plot(ax2,h_amp);
    %ax3 = nexttile;
    %plot(ax3,h_fase);
    
    
    
end