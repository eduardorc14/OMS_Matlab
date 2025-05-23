clc;
clear;
close all;

r = 2.7; % valor de r no intervalo [0 ,4]
T = 30;  % tempo de simulacao
x = zeros (1 , T ) ; % inicializacao do vetor x com zeros
x (1) = 0.95;  % condicao inicial


for k = 1: T -1
    x ( k +1) = r * x ( k ) *(1 - x ( k ) ) ;
end

hold on;
plot(x);
tempo = linspace (0 ,29 ,30) ;        % gera 30 pontos igualmente
stem (tempo, x);                      % espacados entre 0 e 29
xlabel ( ' Tempo ( amostras ) ' )

