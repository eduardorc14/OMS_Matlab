clear; clc;

% Parâmetro
F0 = 10; 
k = 100;
wn = sqrt(k);
A = F0 / k;

% Tempo de simulação
t = linspace(0, 6, 1000);

% Gráfico
x = A*(1 - cos(wn*t));

plot(t, x, 'LineWidth',2);
xlabel('Tempo (s)');
ylabel('Deslocamento x(t)');
grid on;
