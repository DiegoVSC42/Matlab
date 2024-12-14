function  teste = aula(Pe) 
    for i = 1: 2 : 10000
        k = (i+1)/2;
        resp = nchoosek(i,k)*(1-Pe)^(i-k)*(Pe^k);
        if resp <= 10^-6
            teste = i;
            break;
        end
    end
end