function seg_ret_3D(i,j,k)
    
    matriz = zeros(10,10);
    x1 = 1;
    y1 = 1;
    z1 = 1;
    x2 = i;
    y2 = j;
    z2 = k;
    p1 = [x1,y1,z1];
    p2 = [x2,y2,z2];
    Delta_x = x2 - x1;
    Delta_y = y2 - y1;
    Delta_z = z2 - z1;
    if(Delta_x >= Delta_y && Delta_x >= Delta_z)
        N = Delta_x;
    elseif (Delta_y >= Delta_x && Delta_y >= Delta_z)
        N = Delta_y;
    else
        N = Delta_z;
    end
    Delta_t = 1/N;
    for tk = 0: Delta_t : N
        pk = (1-tk)*p1 + tk*p2;
        matriz(round(pk(1)),round(pk(2))) = 1;
    end
    
    imshow(matriz);
    