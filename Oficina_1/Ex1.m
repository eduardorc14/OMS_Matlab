%SCRIPT About MATLAB script files.
%   A  SCRIPT file is an external file that contains a sequence
%   of MATLAB statements.  By typing the filename, subsequent 
%   MATLAB input is obtained from the file.  SCRIPT files have
%   a filename extension of ".m".  To make a SCRIPT file into a
%   function, see FUNCTION.
%
%   See also TYPE, ECHO.

%   Copyright 1984-2015 The MathWorks, Inc. 

% Definição dos números complexos
z1 = 3 + 4i;              % número na forma cartesiana
r2 = 4;                   % Módulo de z2
theta2 = pi/4;            % Argumento de z2 (em radianos) 
z2 = r2 * exp(1i * theta2);  % número na forma polar

% Conversão entre formas
[r1, theta1] = cart2pol(real(z1), imag(z1));
[x2, y2] = pol2cart(theta2, r2);

% Exibição na janela de comando
fprintf('Número z1:\n   Cartesiano: %s\n   Polar: (r = %.2f, θ = %.2f rad)\n\n', num2str(z1), r1, theta1);
fprintf('Número z2:\n   Polar: (r = %.2f, θ = %.2f rad)\n   Cartesiano: %s\n\n', r2, theta2, num2str(z2));

% Plot dos números complexos usando compass
figure;
compass(z1, 'r'); hold on;
compass(z2, 'b');
legend('z1 (Cartesiano)', 'z2 (Polar)');
title('Representação Vetorial de z1 e z2');

% Operações com os números complexos
produto = z1 * z2;
divisao = z1 / z2;

% Exibição dos resultados
fprintf('Produto z1 * z2 = %s\n', num2str(produto));
fprintf('Divisão z1 / z2 = %s\n', num2str(divisao));
