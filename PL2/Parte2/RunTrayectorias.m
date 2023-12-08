%Tiempo de muestreo
Ts=100e-3
% Referencia x-y de posicion
x_0 = 0.1;
y_0 = 0.1;
th_0 = 0;
obsx=3;
obsy=2;
% Ejecutar Simulacion
sim('EvitarObstaculoTrayectorias.slx')
% Mostrar
x=salida_x.signals.values;
y=salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;