function createBoard

    x = zeros(8);
    [L,C] = size(x);

    for i=1:L
        for j=1:C
            for k=1:20
                if x(i,j) == 0
                    x(i,j) = 1;
                end
            end
        end
    end

    imshow(x);
end
