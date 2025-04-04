clc, close;
% Parâmetros
F0 = 1; % Força máxima
t1 = 1; % Início
t2 = 2; % Fim da constate
t3 = 3; % Fim da descida
t = 0:0.01:3; % Tempo de 3 segundos

% Subida
f(t >= 0 & t < t1) = (F0/t1) * t(t >= 0 & t < t1);

% Constante
f(t >= t1 & t <= t2) = F0;

% Descida
f(t > t2 & t <= t3) = (F0 / (t3 - t2)) * (t3 - t(t > t2 & t <= t3));

% Plotar o gráfico
figure;
plot(t, f, 'b', 'LineWidth', 2);
grid on;
xlabel('Tempo [s]');
ylabel('f(t) [N]');
title('Pulso Trapezoidal');