% Fecha todas as figuras e limpa o workspace
close all;
clear all;
clc;

% Define os casos de estudo (zeta, wn)
casos = [
    0.3, 1;
    0.5, 1;
    0.7, 1;
    0.8, 1
];

% Cria uma nova figura
figure;
hold on; % Mantém todos os plots na mesma figura

% Define tempo de simulação personalizado
t = 0:0.01:20; % Simula até 5 segundos

% Loop através de cada caso
for i = 1:size(casos, 1)
    zeta = casos(i, 1);
    wn = casos(i, 2);
    
    % Define a função de transferência
    num = wn^2;
    den = [1, 2*zeta*wn, wn^2];
    
    % Cria o sistema
    sys = tf(num, den);
    
    % Calcula e plota a resposta ao degrau
    [y, t] = step(sys, t);
    plot(t, y, 'LineWidth', 1.5);
    
    % Armazena as legendas
    legendas{i} = sprintf('ζ = %.1f, ωn = %d', zeta, wn);
end

% Configurações do gráfico
grid on;
title('Resposta ao Degrau Unitário de Sistemas de Segunda Ordem');
xlabel('Tempo (s)');
ylabel('Amplitude');
legend(legendas, 'Location', 'best');
% Define tempo de simulação personalizado
hold off;