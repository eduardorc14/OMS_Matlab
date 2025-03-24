clc, clear;
% Definir variáveis simbólicas
syms a b c d x y;
M = [a*x b*x^2; c*x^3 d*y];
d_M = diff(M, x);

disp('Função: ');
pretty(M);
disp('Derivada de primeira ordem com relação a x:');
pretty(d_M);