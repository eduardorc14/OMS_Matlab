clc, close
% variáveis simbolicas
syms t s;
% Função Quadrática
f_t = -4*t^2 + 4*t;

F = laplace(f_t, t, s);

disp('Transformada de Laplace: -4t² + 4t ')
pretty(F);

% Simulação do sinal no tempo
t = linspace(0,1,100);
f_t_vals = 4*t - 4*t.^2;

figure;
plot(t, f_t_vals, 'b', 'LineWidth', 1.5);
grid on;
xlabel('Tempo [s]');
ylabel('f(t)');
title('Sinal no Tempo');
