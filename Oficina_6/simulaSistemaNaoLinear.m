% Exercício 2
function simulaSistemaNaoLinear

    % Horizonte de tempo
    T = 200; 

    % Condições iniciais nulas
    x0 = [0; 0]; 

    % Integração numérica
    [t, x] = ode45(@sistemaNaoLinear, [0 T], x0);

    % y(t) = x(:,1), dy/dt = x(:,2)
    y = x(:,1);
    dy = x(:,2);

    % Plot 1 – y(t)
    figure;
    plot(t, y, 'b')
    xlabel('Tempo [s]')
    ylabel('y(t)')
    title('Resposta temporal y(t)')
    grid on

    % Plot 2 – dy/dt(t)
    figure;
    plot(t, dy, 'r')
    xlabel('Tempo [s]')
    ylabel('dy/dt')
    title('Velocidade (derivada de y)')
    grid on

    % Plot 3 – Diagrama de fase: dy × y
    figure;
    plot(y, dy, 'k')
    xlabel('y(t)')
    ylabel('dy/dt')
    title('Diagrama de Fase: dy/dt × y')
    grid on

end

function dx = sistemaNaoLinear(t, x)
    dx = zeros(2,1);
    dx(1) = x(2);
    dx(2) = -0.02*x(2) - x(1) - 5*x(1)^3 + 8*cos(0.5*t);
end


% O diagrama de fase apresenta comportamento oscilatório.
