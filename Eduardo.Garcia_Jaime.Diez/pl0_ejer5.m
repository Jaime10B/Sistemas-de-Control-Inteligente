% Definir un rango para x e y
x = linspace(-5, 20, 100);
y = linspace(5, 20, 100);

% Crear una cuadrícula de coordenadas (x, y)
[X, Y] = meshgrid(x, y);

% Calcular los valores de z en función de x e y
Z = Y .* sin(pi * X / 10) + 5 * cos((X.^2 + Y.^2) / 8) + cos(X + Y) .* cos(3 * X - Y);

% Crear una figura
figure;

% Subtrama superior central: superficie
subplot(2, 2, [1, 2]);
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie');

% Subtrama inferior izquierda: superficie en forma de malla
subplot(2, 2, 3);
mesh(X, Y, Z); %%surf es casi lo mismo pero para malla
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie en Malla');

% Subtrama inferior derecha: contorno con barra de color
subplot(2, 2, 4);
contourf(X, Y, Z); %%lo mismo q las anteriores pero para contorno
colorbar;
xlabel('X');
ylabel('Y');
title('Contorno con Barra de Color');

% Ajustar el espacio entre las subtramas
sgtitle('Visualización de Superficie, Superficie en Malla y Contorno');

