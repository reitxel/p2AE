function permut(N)
    
    %Función que nos genera todas posibles ordenaciones de un vector de
    %números.
    %También se trata de un arbre de cerca pero ahora el operador es el
    %intercambio de valores (exchange a[1] and a[i]) para simular la
    %permutación.
    
    %"a" es el vector estado actual 
    
    a=(1:N)-1; %estado inicial. ej: N=3 --> "a" es la secuencia 0 1 2
    enum2(1,a);

        function enum2(k,a)
            if k==length(a)+1
                a
                return ;
            end
            %generación de los sucesores (no tenemos 2 sino muchos)
            for i=(k:length(a))
                enum2(k+1,swap(a,k,i));
            end
        end
        
        %operador, que involucra el intercambio de dos variables
        function a=swap(a,i,j)
            t=a(i);
            a(i)=a(j);
            a(j)=t;
        end
    end