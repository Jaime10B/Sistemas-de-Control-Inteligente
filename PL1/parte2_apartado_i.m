% Tiempo de muestreo
Ts = 100e-3;

% Valores de referencia
valores_refx = [2.0, 3.0, 5.0];  % Define una serie de valores de referencia
valores_refy = [2.0, 3.0, 5.0];  % Define una serie de valores de referencia

% Bucle para probar diferentes valores de referencia
for i = 1:length(valores_refx)
    for j = 1:length(valores_refy)
        % Establecer los valores de referencia en los modelos
        refx = valores_refx(i);
        refy = valores_refy(j);

        % Simular los modelos en Simulink
        simOutNet = sim('PositionControlNet.slx');
        x1 = salida_x.signals.values;
        y1 = salida_y.signals.values;

        simOutNoNet = sim('PositionControl.slx');
        x2 = salida_x.signals.values;
        y2 = salida_y.signals.values;

        % Calcular el error como la diferencia entre las trayectorias
        error_x = x1 - x2;
        error_y = y1 - y2;

        % Crear subplots para las gráficas de trayectorias en la figura 1
        figure(1);
        subplot(length(valores_refx), length(valores_refy), (i - 1) * length(valores_refy) + j);
        plot(x1, y1, 'b');
        hold on;
        plot(x2, y2, 'r');
        grid on;
        xlabel('X');
        ylabel('Y');
        title(['RefX = ', num2str(refx), ', RefY = ', num2str(refy)]);
        hold off;

        % Crear una figura separada para las gráficas de errores en la figura 2
        figure(2);
        subplot(length(valores_refx), length(valores_refy), (i - 1) * length(valores_refy) + j);
        plot(error_x, error_y, 'g');
        grid on;
        xlabel('Error X');
        ylabel('Error Y');
        title(['Error for RefX = ', num2str(refx), ', RefY = ', num2str(refy)]);
    end
end
