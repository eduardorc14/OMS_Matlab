clc, close
% Tempo do sinal começa em zero e termina em 10 com passo de 0.01
t = 0:0.01:10;

% Definição dos sinais
x_trans = -10 * exp(-t);
x_perm = cos(5*t);
x = x_trans + x_perm;

% Gráficos
figure;
hold on;
plot(t, x_trans, 'r--', 'linewidth', 2);
plot(t, x_perm, 'g-.', 'linewidth', 2);
plot(t, x, 'b', 'linewidth', 2);

grid on;
title('Respostas Transitória, Permanente e Completa');
xlabel('Tempo (s)');
ylabel('Amplitude');
legend('Resposta Transitória','Resposta Permanente','Resposta Completa', 'Location','southeast');
hold off;