clc; close all; clear

% Definindo função simbólica
syms x;
f = exp(x);

% Expansão em série de Taylor
ponto = 1.5;

taylor1 = taylor(f, x, 'ExpansionPoint', ponto, 'Order', 2); % 1ª ordem
taylor2 = taylor(f, x, 'ExpansionPoint', ponto, 'Order', 3); % 2ª ordem
taylor3 = taylor(f, x, 'ExpansionPoint', ponto, 'Order', 4); % 3ª ordem
taylor4 = taylor(f, x, 'ExpansionPoint', ponto, 'Order', 5); % 4ª ordem
taylor5 = taylor(f, x, 'ExpansionPoint', ponto, 'Order', 6); % 5ª ordem


% Intervalo para o gráfico
x_vals = -3:0.1:3;

% Converter funções simbólicas para numéricas
f_num = matlabFunction(f);
taylor1_num = matlabFunction(taylor1);
taylor2_num = matlabFunction(taylor2);
taylor3_num = matlabFunction(taylor3);
taylor4_num = matlabFunction(taylor4);
taylor5_num = matlabFunction(taylor5);

% Plotar as funções
figure;
plot(x_vals, f_num(x_vals), 'k', 'LineWidth', 2, 'DisplayName', 'f(x) = e^x (Original)');
hold on;
plot(x_vals, taylor1_num(x_vals), 'r--', 'DisplayName', 'Taylor 1ª Ordem');
plot(x_vals, taylor2_num(x_vals), 'g--', 'DisplayName', 'Taylor 2ª Ordem');
plot(x_vals, taylor3_num(x_vals), 'b--', 'DisplayName', 'Taylor 3ª Ordem');
plot(x_vals, taylor4_num(x_vals), 'm--', 'DisplayName', 'Taylor 4ª Ordem');
plot(x_vals, taylor5_num(x_vals), 'c--', 'DisplayName', 'Taylor 5ª Ordem');

grid on;
legend('Location', 'best');
xlabel('x');
ylabel('f(x)');
title('Série de Taylor de f(x) = e^x em torno de x = 1.5');
xlim([-3 3]); % Definir a escala do eixo das abscissas
ylim([-5 20]); % Ajuste o limite do eixo y para melhor visualização, se necessário
hold off;