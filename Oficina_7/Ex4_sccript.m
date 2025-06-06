clc; clear;

x0 = 1;
sim('Simulink_Ex4.slx');  

plot(tout, simout);
xlabel('Tempo [s]');
ylabel('x(t)');
