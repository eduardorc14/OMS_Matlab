clc; % Limpa a janela de comandos
clear; % Apaga todas as variáveis do workspace
close all; % Fecha todas as janelas de figuras abertas

% Declaração das Matrizes
A = [1 1 6; 5 -2 1; -8 2 -3];
B = [2 9; -5 -1; 9 2];

% Função para determinar se a matriz e quadrada
function isSquareMatrix(x)
    [rows, cols] = size(x);

    if rows == cols
        disp('A matriz é quadrada.');
    else
        disp('A matriz não é quadrada')
    end
end

disp('Verificando matriz A');
isSquareMatrix(A);

disp('Verificando matriz B');
isSquareMatrix(B);

A_2 = find(A == 2);
B_2 = find(B == 2);

disp('Índice do elemento igual a 2 em A:');
disp(A_2);

disp('Índices doa elementos iguais a 2 em B:');
disp(B_2);

% Encontrar elementos negativos em A e B
A_neg = find(A < 0);
B_neg = find(B < 0);

disp('Índices de elementos negativos em A:');
disp(A_neg);

disp('Índices de elementos negativos em B:');
disp(B_neg);