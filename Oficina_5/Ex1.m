clc; clear;

% Parâmetros sistema
m = 1;
c = 10;
f0 = 100;

% Função de transferência
num = [0 0 f0];
den = [m c 0];

sys = tf(num, den);

% Tempo de simulação
t = linspace(0, 2, 1000);

% Resposta ao impulso
[y, t_out] = impulse(sys, t);
x = f0 * y;

% Plotagem
plot(t_out, x, 'b', 'LineWidth', 2);
title('Resposta ao Impulso: f(t) = 100 \delta(t)');
xlabel('Tempo');
ylabel('Deslocamento x(t)');
grid on;