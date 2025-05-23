function simulaMassaMola
    % Parâmetros do sistema
    m = 3;     % kg
    c = 1;     % Ns/m
    k = 10;    % N/m

    % Tempo de simulação
    T = 10;

    % Condições iniciais
    x0 = [0; 0];  % posição e velocidade iniciais

    % Simulação com ode45
    [t, x] = ode45(@(t,x) modeloMassaMola(t, x, m, c, k), [0 T], x0);

    % Plot da posição (x1 = y)
    plot(t, x(:,1), 'b', 'LineWidth', 1.5)
    xlabel('Tempo [s]')
    ylabel('Posição y(t) [m]')
    title('Resposta do sistema massa-mola-amortecedor a f(t) = 3u(t)')
    grid on
end

function dx = modeloMassaMola(t, x, m, c, k)
    f = 3;  % Degrau unitário: f(t) = 3 para t >= 0
    dx = zeros(2,1);
    dx(1) = x(2);
    dx(2) = (1/m)*(f - c*x(2) - k*x(1));
end
