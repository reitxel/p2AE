function queen_binary(k,a)
N=length(a);
% a=zeros(N);
% k=1;
if k==length(a)+1%longitud de las columnas de la matriz
    if sum(a) == ones(1,N)
        if sum(a') == ones(1,N)
            if diagonals(a)== 0
                a
                return ;
            end
        end
    end
    
end

function diags = diagonals( a )
        diags = 0;
        for i = 1:(N-1)
            for j = (i+1):N
                horizontal = j - i;
                vertical = abs( a(j) - a(i) );
                if horizontal == vertical
                    diags = diags + 1;
                    % Si borras el siguiente return,
                    % te dice el número de colisiones diagonales:
                    return;
                end
            end
        end 
    end

%generación de los sucesores (no tenemos 2 sino muchos)
queen_binary (k+1,a); 
a(k) = 1; 
queen_binary (k+1,a);
end