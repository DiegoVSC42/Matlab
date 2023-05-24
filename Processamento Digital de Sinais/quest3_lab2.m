
delta = [1 zeros(1,499)];
stem(delta);title("Delta");figure;

b = ones(1,500);
a = ones(1,500);
cond_inic = zeros(1,max(length(a),length(b))-1);


h = filter(b,a,delta,cond_inic);
 
resp_amp_delta = resposta_em_amplitude(h);
plot(resp_amp_delta);title("Resposta em amplitude de Delta");figure;


bks_h1 = [0.1 0.3 0.3 0.1]; 
aks_h1 = [1 -0.58 0.42 -0.056];
cond_inic_h1 = zeros(1,max(length(aks_h1),length(bks_h1))-1);
y_h1 = filter(bks_h1,aks_h1,delta,cond_inic_h1);
resposta_em_amplitude(y_h1);title("Resposta em amplitude filtro H1");figure;


bks_h2 = [.13 -.26 0.13];
aks_h2 = [1 -1.4 1.27 -.66 .27];
cond_inic_h2 = zeros(1,max(length(aks_h2),length(bks_h2))-1);
y_h2 = filter(bks_h2,aks_h2,delta,cond_inic_h2);
resposta_em_amplitude(y_h2);title("Resposta em amplitude filtro H2");figure;


bks_h3 = [.45 -1.34 1.34 -0.45];
aks_h3 = [1 -1.46 .91 -.2];
cond_inic_h3 = zeros(1,max(length(aks_h3),length(bks_h3))-1);
y_h3 = filter(bks_h3,aks_h3,delta,cond_inic_h3);
resposta_em_amplitude(y_h3);title("Resposta em amplitude filtro H3");




 