% Exercício 1
function simulacaoSistema

    % Tempo de simulação
    T = 10;  % segundos

    % Condições iniciais
    x0_1 = 2;
    x0_2 = -1;

    % Simulação para a primeira condição inicial
    [t1, x1] = ode45(@(t,x) -x^3, [0 T], x0_1);

    % Simulação para a segunda condição inicial
    [t2, x2] = ode45(@(t,x) -x^3, [0 T], x0_2);

    % Plot
    figure
    plot(t1, x1, 'b-', 'DisplayName', 'x(0) = 2')
    hold on
    plot(t2, x2, 'r--', 'DisplayName', 'x(0) = -1')
    xlabel('Tempo [s]')
    ylabel('x(t)')
    title('Evolução temporal de x(t) para diferentes condições iniciais')
    legend
    grid on

end
