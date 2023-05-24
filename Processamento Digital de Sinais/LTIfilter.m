function y = LTIfilter(Bks,Aks,x,cond_inic)
    stem(x);figure;

    y = zeros(1,length(x));
    
    for n = 1 : length(x)-1
       for k = 1 : length(Bks)-1
            sum_bks = Bks(k).*x(n+k);
       end
    end
    
    
    stem(y);figure;
end