function queen_binary(k,a)
N=length(a);
% a=zeros(N);
% k=1;
    if k==length(a)+1%longitud de las columnas de la matriz
        if sum(a) == ones(1,length(a(1,:)))
            if sum(a') == ones(1,length(a(1,:)))
                if diagonals(a)== 0
                    a
                    %tab=zeros(N); para mostrar tablero
                    %tab=sol(a,tab)
                    return ;
                end
                
            end
        end
        return;
    end


function diags = diagonals(a)
        diags = 0;
        for i = 1:(length(a)-1)
            for j = (i+1):length(a)
                horizontal = j - i;
                vertical = abs(a(j)-a(i));
                if horizontal == vertical
                    diags = diags + 1;
                    % Si borras el siguiente return,
                    % te dice el número de colisiones diagonales:
                    return;
                end
            end
        end 
end

% function tab=sol(a,tab) ---> funcion muestra tablero
%     for i = (1:length(a))
%         tab(i,a(i))=1;
%     end
% end

%generación de los sucesores (no tenemos 2 sino muchos)
queen_binary (k+1,a); 
a(k) = 1; 
queen_binary (k+1,a);
end