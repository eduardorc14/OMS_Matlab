clc, close
% Variáveis simbólicas
syms s m c k;

% Função de transferência
G = 1 / (m*s^2 + c*s + k);

% Exibindo no formato simbólico
disp('Função de transferência');
pretty(G);

% Definindo parâmetros
m = 1; % massa m kg;
c = 2; % amortecedor c Ns/m;
k = 4; % mola k N/m;


num = 1;
den = [1 2 4];
G = tf(num, den);

% Protar a resposta ao degrau
figure;
step(G);
grid on;
title('Resposta ao Degrau do Sistema');
xlabel('Tempo');
ylabel('Saída x(t)');

