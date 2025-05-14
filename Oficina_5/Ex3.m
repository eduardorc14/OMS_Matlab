clear; clear all;

% Parâmetros
m = 1;
k = 100;
f0 = 10;


num = [0 0 f0];
den = [m 0 k];

% Tempo de simulação
t = linspace(0, 6, 1000);

sys = tf(num, den);
grid on;
[y, t, x ] = step(sys, t);

plot(t, y, 'LineWidth',2);
xlabel('Tempo (s)');
ylabel('Deslocamento x(t)');
grid on;

