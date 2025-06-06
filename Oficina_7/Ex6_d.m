clc; clear; close all;
c = 1;
m = 3;




% Simula k = 30;
k = 0.5;
sim('Simulink_Ex6.slx');
simout2 = simout;

k = 30;
sim('Simulink_Ex6.slx');
simout1 = simout;

figure(1);

plot(tout, simout2, 'r','LineWidth',1.5); hold on;
plot(tout, simout1, 'b','LineWidth',1.5); hold off;

xlabel('Tempo [s]');
ylabel('x(t)');
legend('k = 30 (maior rigidez)');
title('Simulação do sistema para k = 0.5 e k = 30');
grid on;



