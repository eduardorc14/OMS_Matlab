

clc; clear; close all;

% Parâmetros
m = 3;
c0 = 1;
c = c0;
k0 = 10;
k = k0;

c1 = 2;
c2 = 0.5;


sim('Simulink_Ex6.slx');

figure(1);
plot(tout, simout, 'b', 'LineWidth',1.5);
xlabel('Tempo [s]');
ylabel('x(t)');
title('Simulação do sistema para f(t) = 3u(t)');

% Simula c = 2
c = c1;
sim('Simulink_Ex6.slx');
simout1 = simout;
% Simula c = 0.5;
c = c2;
sim('Simulink_Ex6.slx');
simout2 = simout;

figure(2);

plot(tout, simout1, 'b','LineWidth',1.5);
hold on;
plot(tout, simout2, 'r', 'LineWidth', 1.5);
hold off;

xlabel('Tempo [s]');
ylabel('x(t)');
legend('c = 2 (mais amortecido)', 'c = 0.5 (menos amortecido)');
title('Simulação do sistema para c = 2 e c = 0.5');
grid on;

% Com c = 0.5 a resposta é mais oscilatória, com uma amplitude maior, com
% maior tempo de acomodação.
% Para c = 2 a resposta como menos oscilação e establiza rapidamente.

