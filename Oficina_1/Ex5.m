clc; clear; close all;
% Decomposição de frações Parciais das funções racionais
funcoes = {{[6 6], [1 4.46 0.13]}, {[1 2 3], [1 2 1]},{[6 204],[1 10 34]}};

% Loop para calcular os coeficientes
for i = 1:length(funcoes)
    % Calculando coeficientes
    N = funcoes{i}{1};
    D = funcoes{i}{2};

    % Cálculo das frações parciais
    [R, P, K] = residue(N,D);
    fprintf('\n=========================\n');
    fprintf('Função %d:(%s) / (%s)\n', i, poly2str(N, 's'), poly2str(D,'s'));
    fprintf('\n=========================\n');

    disp('Coeficientes dos resíduos (R):'), disp(R)
    disp('Coeficientes dos resíduos (P):'), disp(P)
    disp('Coeficientes dos resíduos (K):'), disp(K)
end