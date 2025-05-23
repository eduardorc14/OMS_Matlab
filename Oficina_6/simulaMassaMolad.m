function simulaMassaMolad
    % Parâmetros fixos
    m = 3;        % kg
    c = 1;        % Ns/m
    T = 10;       % tempo final
    x0 = [0; 0];  % condições iniciais

    % Dois valores de rigidez da mola
    k1 = 5;   % mola mais fraca
    k2 = 20;  % mola mais rígida

    % Simulação com k1
    [t1, x1] = ode45(@(t,x) modeloMassaMola(t, x, m, c, k1), [0 T], x0);

    % Simulação com k2
    [t2, x2] = ode45(@(t,x) modeloMassaMola(t, x, m, c, k2), [0 T], x0);

    % Plotando ambas
    figure
    plot(t1, x1(:,1), 'b', 'DisplayName', 'k = 5', 'LineWidth', 1.5)
    hold on
    plot(t2, x2(:,1), 'r--', 'DisplayName', 'k = 20', 'LineWidth', 1.5)
    xlabel('Tempo [s]')
    ylabel('Posição y(t) [m]')
    title('Comparação para diferentes valores de k (rigidez da mola)')
    legend
    grid on
end

function dx = modeloMassaMola(t, x, m, c, k)
    f = 3;
    dx = zeros(2,1);
    dx(1) = x(2);
    dx(2) = (1/m)*(f - c*x(2) - k*x(1));
end

% Um valor menor de k mola mais fraca resulta em maior deslocamento final e
% respossta mais lenta. Um valor maior de mola mais rígida resulta em menor
% deslocamento final resposta mais rápida, com maior frequência de
% oscilação.