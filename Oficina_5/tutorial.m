clc, clear all;

num = [0 2 25];
den = [1 4 25];

G = tf(num, den);

% Gerar curva de resposta ao degrau unitário
step(G);
