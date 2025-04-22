clc; clear;
% Parâmetros do sistema sem amortecimento
wn = 5;  % frequência natural

% condições iniciais
x0 = 0;
dx0  = 0.2;

% Tempo
t = linspace(0, 4, 500);

x = x0*cos(wn*t) + (dx0/wn)*sin(wn*t);

% Gráfico
plot(t, x, 'b', 'LineWidth', 2); hold on;
xlabel('Tempo (s)');
ylabel('x(t)');
title('Resposta sem amortecimento');

% Comparando com a figura 7 da apostila podemos notar uma diferença na
% amplitude do sinal e no período natural.