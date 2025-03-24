% Função simbolica
clc, clear
syms x;
f = x^4 + 2*x^3 + x^2 + 3*x + 5;

% Cálculo da derivada
df_1 = diff(f);
df_2 = diff(f, 2);

% Impressão dos resultados
disp('Função f:');
pretty(f);
disp('Derivada de primeira ordem:');
pretty(df_1);
disp('Derivada de segunada ordem:');
pretty(df_2);
