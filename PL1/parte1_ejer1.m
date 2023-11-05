% Datos de entrada
X = [0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5;
    1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3];
% Clases a las que pertenecen los datos
Y = [1 1 1 0 0 1 1 1 0 0;
     0 0 0 0 0 1 1 1 1 1];

% Crear una red neuronal
net = perceptron;

% Entrenar la red neuronal
net = train(net, X, Y);

% Agregar el nuevo dato [0.0 -1.5]
nuevo_dato = [0.0; -1.5];
X = [X nuevo_dato];
Y = [Y [1; 1]];

% Visualizar los datos actualizados
figure;
plotpv(X, Y);

% Visualizar la superficie de separación
hold on;
plotpc(net.iw{1, 1}, net.b{1});
hold off;
