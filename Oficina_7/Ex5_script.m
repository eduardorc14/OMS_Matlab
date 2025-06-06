clc; clear; close all;

% Conectando ao Simulink
sim('Ex5.slx');


plot(tout, simout);
xlabel('Tempo [s]');
ylabel('y(t)');
