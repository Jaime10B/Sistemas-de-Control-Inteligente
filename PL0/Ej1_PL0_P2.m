%EJERCICIO 1    
    %Declaración de la función del primer apartado
    syms k;
    fk = 2+5*k+k^2;
    transformada = ztrans(fk);
    
    %Representación grafica
    figure;
    hold on;
    
    subplot(1,2,1);
    fplot(fk); 
    title('Original');
    
    subplot(1,2,2);
    fplot(transformada);
    title('Transformada');
    
    hold off 


    %Declaración de la función del segundo apartado
    syms a;
    fk2 = sin(k)*exp(-a*k);
    transformada2 = ztrans(fk2);
    
    %Representación grafica
    figure;
    hold on;
    
    subplot(1,2,1);
    fsurf(fk2); 
    title('Original');
    
    subplot(1,2,2);
    fsurf(transformada2);
    title('Transformada');
    
    hold off 

    %Declaración de la función del tercer apartado
    T1 = tf([0.4, 0],[1, -1, 0.1, 0.02],1);
    impulso = impulse(T1);
    escalon = step(T1);    

    %Representación grafica al impulso del sistema
    figure;
    hold on;

    subplot(1,2,1);
    stem(impulso);
    title('Impulso');

    %Representación grafica al impulso del sistema
    subplot(1,2,2);
    stem(escalon);  
    title('Escalón');

    hold off 