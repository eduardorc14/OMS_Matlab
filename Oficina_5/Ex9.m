
% Fecha todas as figuras e limpa o workspace
close all;
clear;
clc;

% Define a função de transferência
wn = 6;
zeta = 0.8;
num = [0 0 wn^2];
den = [1, 2*zeta*wn, wn^2];

% tf2ss converte uma função de transferência em uma representação em espaço
% de estados

[A, B, C, D] = tf2ss(num, den);

disp('A = ');
disp(A);
disp('B = ');
disp(B);
disp('C =');
disp(C);
disp('D = ');
disp(D);

% Conversão de espaço de estados para função de transferência ss2ft

[num_rec, den_rec] = ss2tf(A, B, C, D, 1);

disp('Numerador original:'); disp(num);
disp('Numerador recuperado:'); disp(num_rec);
disp('Denominador original:'); disp(den);
disp('Denominador recuperado:'); disp(den_rec);
