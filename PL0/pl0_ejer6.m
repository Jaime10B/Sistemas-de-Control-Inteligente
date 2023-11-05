A= [0,2,10,7;
    2,7,7,1;
    1,9,0,5;
    4,0,0,6
    2,8,4,1;
    10,5,0,3;
    2,6,4,0;
    1,1,9,3;
    6,4,8,2;
    0,3,0,9]

a= [90;59;15;10;80;17;93;51;41;76]

B= [0.110,0,1,0;
    0,3.260,0,1;
    0.425,0,1,0;
    0,3.574,0,1;
    0.739,0,1,0;
    0,3.888,0,1;
    1.054,0,1,0;
    0,4.202,0,1;
    1.368,0,1,0;
    0,4.516,0,1]

b= [317;237;319;239;321;241;323;243;325;245]

A_inv= pinv(A)
B_inv= pinv(B)
condicionA= cond(A_inv)
condicionB= cond(B_inv)

ruido = randn(size(a)); % Vector de ruido

a_ruido= a+ruido
b_ruido= b+ruido

sol_A= linsolve(A,a)
sol_B= linsolve(B,b)

sol_a_ruido= linsolve(A,a_ruido)
sol_b_ruido= linsolve(B,b_ruido)
