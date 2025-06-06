function simular_SIR()
    % Parâmetros da matrícula 2019103863
    beta = 6;    
    gamma = 3;   

    P = 1000;

    
    a = (beta + 1) / (11 * P);   
    b = (gamma + 1) / 100;      

    % Condições iniciais
    x0 = [999; 1; 0];  

    % Instantes
    tspan = [0 500];

    % Aplicando ode45
    [t, x] = ode45(@(t, x) sir_dinamico(t, x, a, b), tspan, x0);

   
    S = x(:, 1);
    I = x(:, 2);
    R = x(:, 3);
  
    figure;
    plot(t, S, 'b', 'LineWidth', 2); hold on;
    plot(t, I, 'r', 'LineWidth', 2);
    plot(t, R, 'g', 'LineWidth', 2);
    xlabel('Tempo');
    ylabel('População');
    legend('Suscetíveis', 'Infectados', 'Recuperados');
    title('Simulação do modelo SIR (Sistema em estados)');
    grid on;
end

function dx = sir_dinamico(~, x, a, b)
    S = x(1);
    I = x(2);
    R = x(3);

    dS = -a * S * I;
    dI =  a * S * I - b * I;
    dR =  b * I;

    dx = [dS; dI; dR];
end
