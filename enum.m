function enum (k,a)
    %a[i]=bit i
    
    %Funci�n que nos enumera todas las secuencias de bits.
    %La enumeraci�n es un arbre de cerca, como en los juegos que hemos
    %visto en teor�a. El operador es poner un 0 o poner un 1.
    
    %Tenemos recursividad: capacidad de poder describir cosas a partir
    %de esta misma cosa. La usaremos para implementar la cerca.
    %-->A cada iteraci�n:
    %"a" es el vector estado actual 
    %"k" es la profundidad en la que nos encontramos ("nivel"). Tambi�n se
    %puede interpretar como en qu� posici�n del * estamos explorando.
    
    %(inicializar con a=zeros(1,3); y k=4;)
    
    if k==length(a)+1
        a
        return ;
    end
    %generaci�n de los 2 sucesores
    enum(k+1,a) %uno
    a(k)=1
    enum(k+1,a) %otro
end