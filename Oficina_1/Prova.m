clc;
% Declaração da matriz
A = [1 1 6; 5 -2 1; -8 2 -3];

% Chamada da função para encontrar posições dos negativos
[lin, col] = posicao_negativos(A);

% Exibindo os resultados
disp('Posições dos elementos negativos (linha, coluna):');
for i = 1:length(lin)
    fprintf('(%d, %d)\n', lin(i), col(i));
end

% Função que retorna posições dos negativos
function [lin, col] = posicao_negativos(A)
    % Esta função retorna as posições (linhas e colunas)
    % dos elementos negativos da matriz A
    [lin, col] = find(A < 0);
end
