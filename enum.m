function enum (k,a)
    %a[i]=bit i
    
    %Función que nos enumera todas las secuencias de bits.
    %La enumeración es un arbre de cerca, como en los juegos que hemos
    %visto en teoría. El operador es poner un 0 o poner un 1.
    
    %Tenemos recursividad: capacidad de poder describir cosas a partir
    %de esta misma cosa. La usaremos para implementar la cerca.
    %-->A cada iteración:
    %"a" es el vector estado actual 
    %"k" es la profundidad en la que nos encontramos ("nivel"). También se
    %puede interpretar como en qué posición del * estamos explorando.
    
    %(inicializar con a=zeros(1,3); y k=4;)
    
    if k==length(a)+1
        a
        return ;
    end
    %generación de los 2 sucesores
    enum(k+1,a) %uno
    a(k)=1
    enum(k+1,a) %otro
end