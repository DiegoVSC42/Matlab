delta = [1 zeros(1,499)];
%stem(delta);title("Delta");figure;

b = ones(1,500);
a = ones(1,500);
cond_inic = zeros(1,max(length(a),length(b))-1);


h = filter(b,a,delta,cond_inic);


t = linspace(0,5,10000);
a = [ 1.0000 -3.9179 5.7571 -3.7603 0.9212 ];
b = (1e-6)*[ 0.0585 0.2338 0.3507 0.2338 0.0585 ];
x = sin(2*pi*t) + randn(1,length(t));
cond_inic = [0 0 0 0]; %c.i.s nulas: solução particular

resp_imp = filter(b,a,h,cond_inic);

plot(resp_imp);figure;

resp_x = filter(b,a,x,cond_inic);

plot(resp_x);