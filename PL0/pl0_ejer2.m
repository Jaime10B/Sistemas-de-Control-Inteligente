%Ejercicio 2

%matriz aleatoria
n= input("Introduce un número para el prden de la matriz: \n");

%distribuida del 0 al 1
matrix= rand(n)
%distribuida en el rango que definas
matrix_2= randi([1,50],n)


% columnas impares
impares = matrix_2(:, 1:2:end)

%sacar diagonal
diagonal = matrix_2(1:n+1:end)

%Valor máximo, mínimo, medio y varianza de cada fila. Estos valores se han de representar
%gráficamente, indicando en el eje de abscisas el número de fila 
maximos = max(matrix_2')
minimos = min(matrix_2')
medias = mean(matrix_2')
varianzas = var(matrix_2')

%representar con plot

filas = 1:size(matrix_2,1);

figure;
hold on;
plot(filas, maximos);
plot(filas, minimos);
plot(filas, medias);
plot(filas, varianzas);
xlabel('Número de Fila');
ylabel('Valor');
set(gca,'XTick',filas); % Establecer los valores del eje x manualmente

