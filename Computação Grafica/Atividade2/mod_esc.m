function resp = mod_esc(x,h,v)
    
    [L,C] = size(x);
    N = 2;
    xh = zeros(h*L,h*C);
    [Lxh,Cxh] = size(xh);
    for i = 1 : h : Lxh
        for j = 1: h : Cxh
            for k = 1: 1 : L
                for l = 1: 1 : C
                    xh(i,j) = x(k,l);
                end
            end
        end
    end
    for i = 1 : Lxh
        
    
