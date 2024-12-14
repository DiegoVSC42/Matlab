function [h,H] = fir_janelamento(fs,f1,f2,N,window)
    
    fref = fs/2;
    
    omega_1 = f1*(pi/fref);
    omega_2 = f2*(pi/fref);
    omega_0 = (omega_2 + omega_1)/2;
    B = (omega_2-omega_1)/2;
    tamanho = 2 * N+1;

    switch window
        case 1
            ret = ones(1,tamanho);
            w = ret;
        case 2
            w = hamming(tamanho)';
        case 3
            w = gausswin(tamanho)';
    end

    n = -N : N;
    n = n+eps;
    h = (1./(n.*pi)).*sin(n * B).*cos(omega_0 * n).*w;
    %stem(h);
    H = abs(fft(h,10*length(h)));
    H = H(1:end/2);
    
end