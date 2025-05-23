function simulaSistema4b
    c = 10;      % valor maior de c
    T = 400;     % horizonte maior
    x0 = [1; 1; 1; 1];

    [t, x] = ode45(@(t,x) sistema4(t, x, c), [0 T], x0);

    figure
    plot3(x(:,1), x(:,2), x(:,3))
    xlabel('x')
    ylabel('dx/dt')
    zlabel('y')
    title('Diagrama de fase 3D: x × dx/dt × y (c = 10)')
    grid on
end

function dx = sistema4(t, x, c)
    dx = zeros(4,1);
    dx(1) = x(2);
    dx(2) = -4*x(1) + x(3);
    dx(3) = x(4);
    dx(4) = -c*x(3);
end
