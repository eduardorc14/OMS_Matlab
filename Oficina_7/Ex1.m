clc;
clear;
close all;
%syms s;
% Funções de Transferência
num1 = 1;
den1 = [1 4];

num2 = 3;
den2 = [1 4];

H1 = tf(num1, den1);
H2 = tf(num2, den2);

disp('a) Modelos em série: ');
H_series = series(H1, H2)

disp('b) Modelos em paralelo: ');
H_parallel = parallel(H1, H2)

disp('c) Modelos em malha fechada:');
H_feedback = feedback(H1, H2)

disp('d) Malha fechada com realimentação positiva: ');
H_feedback_positive = feedback(H1, H2, 1)

% Blocos individuais com nomes
H1 = tf(1, [1 2], 'Name', 'H1');
H1.InputName = 'u';
H1.OutputName = 'y1';

H2 = tf(3, [1 4], 'Name', 'H2');
H2.InputName = 'y1';
H2.OutputName = 'y2';

% Criar somador para realimentação negativa
sum = sumblk('u = r - y2');

disp('f) Malha fechada com comando connect');
ClosedLoop = connect(H1, H2, sum, 'r', 'y1');
minreal(ClosedLoop)