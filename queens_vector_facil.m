function  queenss(N)
    solutions = 0;
    a = 1:N;
    enumerate( 1, a );

    function enumerate( k, a )
        if k == length(a) + 1
            if diagonals( a ) == 0
                % Imprime solución:
                solutions = solutions + 1;
                string = sprintf( ' %d', a );
                fprintf( '%3d: %s\n', solutions, string );
            end
            return;
        end
        for i = k:length( a )
            enumerate( k+1, swap( a, k, i ) )
        end
    end

    function a = swap( a, i, j )
        t = a(i);
        a(i) = a(j);
        a(j) = t;
    end

    function diags = diagonals( a )
        diags = 0;
        for i = 1:(length(a)-1)
            for j = (i+1):length(a)
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
end
