function H = fir(h)

omega =  0 : 0.01 : pi;


%[3 2 -1 ]
n = 0 : length(h)-1;

    for k = 1 : length(omega)

        H(k) = sum(h .* exp(-j * omega(k) * n));

    end


plot(omega,abs(H));