clc, clear;
% Declaração da função
syms x;
p = (x^2 -1)*(x -2)*(x - 3);

disp('Função p(x):');
pretty(p);

disp('Expand distribui os produtos:');
disp(expand(p));

disp('Fatora expressões algéblicas:');
disp(factor(p));