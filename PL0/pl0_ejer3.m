% ejercicio 3

%pedir al usuario las dimensiones de la matriz

dimensiones = input("Introduce las dimensiones de la matriz: \n" + ...
    "Debes introducirlo como un vector ( entre [] )")


if (size(dimensiones:1)==1)
    x= dimensiones(1)
    y= dimensiones(1)
else
    x= dimensiones(1)
    y= dimensiones(2)
end

A = IntroducirMatriz(x,y)
B = IntroducirMatriz(x,y)


%traspuestas
A_tras= A'
B_tras=B'

%inversas

if x==y
    A_inv= inv(A)
    B_inv= inv(B)
else
    disp("No te muestro la inversa xq no es cuadrada la matriz")
end

%determinante y rango
if x==y
    A_det = det(A)
    B_det = det(B)
else
    disp("No te muestro el determinante xq no es cuadrada la matriz")
end
A_rango = rank(A)
B_rango= rank(B)

%producto matricial
if x==y
    prod_matricial= A*B
else
    disp("No te muestro la multipl xq no es cuadrada la matriz")
end


%producto elemento a elemento
prod_elementos = A.*B

%vector fila de las primeras filas de A y B
primeras_filas=[A(1,:) B(1,:)]

%vector columna de las primeras columnas de A y B
primeras_columnas=[A(:,1) ; B(:,1)]
