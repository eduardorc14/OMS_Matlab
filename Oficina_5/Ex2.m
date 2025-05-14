clc; clear;

% Parâmetros sistema
m = 1;
c = 10;
f0 = 100;

% Função de transferência
num = [ 0 0 0 f0];
den = [m c 0 0];

sys = tf(num, den);


% Resposta ao degrau unitário
step(sys);