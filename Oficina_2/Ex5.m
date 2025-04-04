clc, close 
% Variáveis simbolicas
syms t s;
f1 = 2*t ; % 0 <= t <=1;
f2 = -2*t + 4; % 1 <= t <= 2

% Calculando Laplace
F1 = laplace(f1, t, s);
F2 = laplace(f2, t, s);

disp('Transformada de Laplace: ');
F = F1 + F2;
pretty(F);

% Gráfico do pulso triangular
t = 0:0.01:2; 
f_t = [2*t(t <= 1), -2*t(t > 1) + 4];

figure;
plot(t, f_t, 'b', 'LineWidth', 2);
xlabel('t');
ylabel('f(t)');
title('Pulso Triangular ');
grid on;