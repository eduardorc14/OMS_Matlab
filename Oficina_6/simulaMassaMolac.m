function simulaMassaMolac
    % Parâmetros fixos
    m = 3;        % kg
    k = 10;       % N/m
    T = 10;       % tempo final
    x0 = [0; 0];  % condições iniciais

    % Valores de amortecimento
    c1 = 0.1;  % pouco amortecido
    c2 = 5;    % muito amortecido

    % Simulação com c1
    [t1, x1] = ode45(@(t,x) modeloMassaMola(t, x, m, c1, k), [0 T], x0);

    % Simulação com c2
    [t2, x2] = ode45(@(t,x) modeloMassaMola(t, x, m, c2, k), [0 T], x0);

    % Plotando ambas
    figure
    plot(t1, x1(:,1), 'b', 'DisplayName', 'c = 0.1 (subamortecido)', 'LineWidth', 1.5)
    hold on
    plot(t2, x2(:,1), 'r', 'DisplayName', 'c = 5 (superamortecido)', 'LineWidth', 1.5)
    xlabel('Tempo [s]')
    ylabel('Posição y(t) [m]')
    title('Comparação para diferentes valores de c')
    legend
    grid on
end

function dx = modeloMassaMola(t, x, m, c, k)
    f = 3;  % Entrada degrau
    dx = zeros(2,1);
    dx(1) = x(2);
    dx(2) = (1/m)*(f - c*x(2) - k*x(1));
end


% Ao variar o coeficiente de amortecimento c, observa-se que valores
% pequenos resultam em respostar oscilatórias enquanto valores grandes
% produzem respostas mais lentas e suaves sem oscilações.









