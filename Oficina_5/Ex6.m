clc; 
clear;

% Sistema
num = [0 0 6.32 18 12.81];
den = [1 6 11.32 18 12.81];

sys = tf(num, den);

step(sys);

% Informações da resposta ao degrau
info = stepinfo(sys);

% Exibir os resultados principais
fprintf('Tempo de subida:        %.4f s\n', info.RiseTime);
fprintf('Tempo de pico:          %.4f s\n', info.PeakTime);
fprintf('Máximo sobressinal:     %.2f %%\n', info.Overshoot);
fprintf('Tempo de acomodação:    %.4f s\n', info.SettlingTime);
