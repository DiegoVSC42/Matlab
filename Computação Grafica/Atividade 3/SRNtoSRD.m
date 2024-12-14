function matrix = SRNtoSRD(x,y,L,C)

j = (((x+1)/2)*(C-1)+1);
i = (-(((y+1)/2)*(L-1)-L));

i = round(i);
j = round(j);

matrix(1) = j;
matrix(2) = i;