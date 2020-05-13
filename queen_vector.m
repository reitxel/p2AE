function queen_vector(n)
a=(1:n);
enum2(1,a);

function enum2(k,a)
    if(k==length(a) + 1)
        b=0;
        b=true(a,b);
        if (b == 1)
            tab=zeros(length(a),length(a));
            tab=sol(a,tab)
        end
        return;
    end
    for i = (k:length(a))
        enum2(k+1, swap(a,k,i));
    end
end

function a = swap(a,i,j)
    t=a(i);
    a(i) = a(j);
    a(j) = t;
end

function b = true(a,b)
    c=diff(a); %calcula la diferencia entre elementos del vector
    for j = (1:length(c))
        if abs(c(j)) < 2 %Todos tienen que estar a una diferencia de 2 indices del anterior y el siguiente
            b=0;
            break %En caso de que uno de los elementos no lo cumpla, no los comprueba todos y b tiene el valor 0
        end
        if (j==length(c)) %Solo llega a recorrer todo el vector cuando todos los elementos cumplen la condición
            b=1;
        end
    end
    
end

function tab=sol(a,tab)
    for i = (1:length(a))
        tab(i,a(i))=1;
    end
end
    
end