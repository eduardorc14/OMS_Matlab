% Fecha todas as figuras e limpa o workspace
close all;
clear;
clc;

num = [0 2 2 5];  % Coeficientes do numerador da função de transferência
den = [1 4 2 5];  % Coeficientes do denominador da função de transferência

[u, t] = gensig('square', 20, 100, 0.01);  % Gera um sinal quadrado

lsim(num, den, u, t);  % Simula a resposta do sistema ao sinal de entrada