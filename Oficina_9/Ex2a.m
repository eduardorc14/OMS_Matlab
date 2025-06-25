% Definindo as matrizes do espaço de estados para a Questão 2a (com nova ordem de variáveis de estado)
A = [0 0 1 0; 0 0 0 1; -3 2 0 0; 1 -2.5 0 0];
B = [0; 0; 1; 0];
C = [1 0 0 0];
D = 0; % Ou D = [0];

% Utilizando o comando ss2tf
[num, den] = ss2tf(A, B, C, D);

% Exibindo os coeficientes
disp('Coeficientes do Numerador (num):');
disp(num);
disp('Coeficientes do Denominador (den):');
disp(den);