clc
clear
close all

n = 0:19;                   % Vetor de tempo
x3 = ones(size(n));         % Degrau unitário: tudo 1

X3 = fft(x3);               % FFT do sinal
N = length(x3);
f = (0:N-1)*(2*pi/N);       % Frequência em rad/s

% Plots
subplot(2,1,1)
stem(f, abs(X3))
xlabel('Frequência (rad/s)')
ylabel('|X3(\omega)|')
title('Magnitude da FFT de x3[n] = u[n]')

subplot(2,1,2)
stem(f, angle(X3))
xlabel('Frequência (rad/s)')
ylabel('Fase (rad)')
title('Fase da FFT de x3[n] = u[n]')
