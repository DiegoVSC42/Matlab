function rast_ret(i_inicial,j_inicial,i_final,j_final,L,C)

resp = zeros(L,C);

for t = 0 : 0.25 : 1
    
    i_resp = i_inicial*(1-t)+i_final*t;
    j_resp = j_inicial*(1-t)+j_final*t;
    i_resp = round(i_resp);
    j_resp = round(j_resp);
    resp(i_resp,j_resp) = 1;
end

%resp
%plot(resp);
%figure;
imshow(resp);
%figure;
%stem(resp);
