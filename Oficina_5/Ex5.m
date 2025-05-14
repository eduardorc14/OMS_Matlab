clc; clear;

% Sistema
num = [0 10 4];
den = [1 4 4];

sys = tf(num, den);

% Resposta ao degrau
figure(1);
step(sys);
title('Resposta ao Degrau');
xlabel('Tempo (s)');
ylabel('Saída');
grid on;

% Resposta ao impulso
figure(2);
impulse(sys);
title('Resposta ao Impulso');
xlabel('Tempo (s)');
ylabel('Saída');
grid on;