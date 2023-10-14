function [solucion, reales, complejas] = pl0_ejer7(poli_1, poli_2)
    % Recoge los arrays con los que se crean los polinomios
    p1 = poly2sym(poli_1);
    p2 = poly2sym(poli_2);

    % Solicita si la solución se aplica a uno de los polinomios o al producto
    fprintf('Seleccione el polinomio para encontrar sus raíces:\n');
    fprintf('1. Polinomio 1\n');
    fprintf('2. Polinomio 2\n');
    fprintf('3. Producto de Polinomios\n');
    opcion = input('Ingrese el número de la opción deseada: ');

    % Calcula las raíces y su clasificación
    if opcion == 1
        solucion = roots(poli_1);
    elseif opcion == 2
        solucion = roots(poli_2);
    elseif opcion == 3
        solucion = roots(conv(poli_1, poli_2));
    else
        error('Opción no válida');
    end

    % Clasifica las raíces en reales y complejas
    reales = sum(imag(solucion) == 0)
    complejas = length(solucion) - reales

    % Representa en el plano complejo la ubicación de las raíces obtenidas
    figure;
    scatter(real(solucion), imag(solucion), 'filled');
    xlabel('Parte Real');
    ylabel('Parte Imaginaria');
    title('Ubicación de las Raíces en el Plano Complejo');
    grid on;
end


