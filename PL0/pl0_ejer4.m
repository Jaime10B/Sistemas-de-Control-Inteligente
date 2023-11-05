tamanos=1:25;
tiempos_rango = zeros(size(tamanos));
tiempos_determinante = zeros(size(tamanos));


for i = 1:length(tamanos);
    matrix = rand(tamanos(i));


    tic;
    rank(matrix);
    tiempos_rango(i) =toc;

    tic;
    det(matrix);
    tiempos_determinante(i)= toc;

end


% Crear una gráfica para mostrar los tiempos de procesamiento
figure;
plot(tamanos, tiempos_rango, 'DisplayName', 'Tiempo de Rango');
hold on;
plot(tamanos, tiempos_determinante, 'DisplayName', 'Tiempo de Determinante');
xlabel('Tamaño de la Matriz');
ylabel('Tiempo (segundos)');
legend('Location', 'Northwest');
title('Tiempo de Procesamiento para el Rango y el Determinante de Matrices Aleatorias');
grid on;
set(gca,'XTick',tamanos); % Establecer los valores del eje x manualmente
% Mostrar la leyenda y la cuadrícula en la gráfica
legend('show');
grid on;

