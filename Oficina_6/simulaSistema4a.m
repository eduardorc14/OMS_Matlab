function simulaSistema4a
    % Parâmetro
    c = 9;

    % Intervalo de simulação
    T = 200;

    % Condições iniciais: [x(0), x'(0), y(0), y'(0)]
    x0 = [1; 1; 1; 1];

    % Simulação com ode45
    [t, x] = ode45(@(t,x) sistema4(t, x, c), [0 T], x0);

    % x = x(:,1), dx/dt = x(:,2), y = x(:,3)
    figure
    plot3(x(:,1), x(:,2), x(:,3))
    xlabel('x')
    ylabel('dx/dt')
    zlabel('y')
    title('Diagrama de fase 3D: x × dx/dt × y')
    grid on
end

function dx = sistema4(t, x, c)
    dx = zeros(4,1);
    dx(1) = x(2);
    dx(2) = -4*x(1) + x(3);
    dx(3) = x(4);
    dx(4) = -c*x(3);
end
