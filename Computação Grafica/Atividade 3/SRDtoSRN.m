function matrix = SRDtoSRN(j,i,L,C)

x = 2 * (((j-1)/(C-1)) - 1/2);
y = 2 * (((L-i)/(L-1)) - 1/2);

x = round(x);
y = round(y);
matrix(1) = x;
matrix(2) = y;