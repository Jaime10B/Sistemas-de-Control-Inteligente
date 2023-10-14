function matriz = IntroducirMatriz(X, Y)

    % Inicializa una matriz de X por Y con ceros
    matriz = zeros(X,Y);
    
    for i = 1:X
        for j = 1:Y
            n = input("Introduce un número:\n",'s');
            if strcmp(n, 'r') 
                % Si el usuario ingresó 'r', llena el resto de la matriz con valores aleatorios
                matriz(i:end, j:end) = rand(X - i + 1, Y - j + 1);
                % Rompe el bucle, ya que el usuario eligió llenar el resto aleatoriamente
                return;
            else
                matriz(i, j) = str2num(n);
            end
        end
    end
end