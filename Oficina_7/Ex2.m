clc;
clear;

% Função de transferência

num1 = 7;
den1 = [1 8 7];
G1 = tf(num1, den1);

num2 = 16;
den2 = [1 8 16 ];
G2 = tf(num2, den2);

num3 = 80;
den3 = [1 8 80];
G3 = tf(num3, den3);

% Define o vetor de tempo
t = 0:0.01:5;  % de 0 a 5 segundos com passo de 0.01s
rampa = t;
% Calcula as respostas ao degrau
[y1, t1] = step(G1, t);
[y2, t2] = step(G2, t);
[y3, t3] = step(G3, t);

y = lsim(G3, rampa, t);

% Plota manualmente com plot() e hold on
figure(1);
plot(t1, y1, 'r', 'LineWidth', 1.5); hold on;
plot(t2, y2, 'g', 'LineWidth', 1.5);
plot(t3, y3, 'b', 'LineWidth', 1.5);

grid on;

% Ajusta o gráfico
legend('K = 7', 'K = 16', 'K = 80');
title('Resposta ao Degrau para Diferentes Valores de K');
xlabel('Tempo (s)');
ylabel('Saída');

figure(2);
plot(t, y, 'b--', 'LineWidth', 1.5); hold on;
plot(t, u, 'b', 'LineWidth', 1.5);
title('Resposta a Rampa para K = 80');
xlabel('Tempo (s)');
ylabel('Saída');
grid on;

% K = 7 apresenta uma resposta lenta, sem sobressinal, erro em regime
% permanente para entrada degrau = 0 como esperado por ser um sistema tipo
% 1, sistema estável.

% K = 16 apresenta uma resposta mais rápida, sem sobressinal, com bom
% compromisso entre estabilidade e velocidade e erro nulo para entrada
% degrau.

% K = 80 apresenta resposta muito rápida, com sobressinal bastante visível
% e erro nulo para entrada degrau.