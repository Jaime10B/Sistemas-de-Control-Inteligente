%Tiempo de muestreo
Ts = 100e-3;
% Referencia x-y de posicion
refx=2.0;
refy=2.0;
% Ejecutar Simulacion
sim('PositionControlNet.slx')

% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on; 