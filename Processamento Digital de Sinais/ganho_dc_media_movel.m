function ganho_dc = ganho_dc_media_movel(N)

    for i = 1 : N
    
        h(i) = (1/N);
        
    end
    
    H = fir(h);
    ganho_dc = abs(H(1));
    
end