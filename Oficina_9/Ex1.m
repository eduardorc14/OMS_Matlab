% Definindo as matrizes do espaço de estados
A = [0 1 0; 0 0 1; -1 -2 -1];
B = [0; 0; 2];
C = [1 0 0];
D = 0; % Ou D = [0];

% Utilizando o comando ss2tf para obter a função de transferência
[num, den] = ss2tf(A, B, C, D);

% Exibindo os coeficientes
disp('Coeficientes do Numerador (num):');
disp(num);
disp('Coeficientes do Denominador (den):');
disp(den);