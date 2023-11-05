%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% APROXIMACIÓN DE FUNCIONES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all;
% DEFINICIÓN DE LOS VECTORES DE ENTRADA-SALIDA
% ============================================
t = -3:.1:3; % eje de tiempo
F = zeros(size(t));

for i = 1:length(t)
    if t(i) == 0
        F(i) = 1;
    else
        F(i) = sin(pi * t(i)) / (pi * t(i));
    end
end

F = F + 0.001 * randn(size(t));

plot(t, F, '+');
title('Vectores de entrenamiento');
xlabel('Vector de entrada P');
ylabel('Vector Target T');


% DISEÑO DE LA RED
% ==================
hiddenLayerSize = 12;
net = fitnet(hiddenLayerSize,'trainrp');
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
net = train(net,t,F);
Y=net(t);
plot(t,F,'+'); hold on;
plot(t,Y,'-r'); hold off;
title('Vectores de entrenamiento');
xlabel('Vector de entrada P');
ylabel('Vector Target T');