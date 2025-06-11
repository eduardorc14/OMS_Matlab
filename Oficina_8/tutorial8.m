close all
clear
clc

Ts = 0.01; % intervalo de amostragem
t = 0:Ts:8;
x = cos (2* pi * t) .* sin (6* pi * t ); % sinal no tempo
X = fft ( x) ; % transformada

N = length ( t ) ; % numero de pontos

w = 2* pi *(0:( N -1) ) /( N * Ts ) ; % frequencia angular

figure
subplot (2 ,1 ,1) , plot (w , abs (X ) ) ; % magnitude
ylabel ( ' |X| ' )
axis tight
subplot (2 ,1 ,2) , plot (w , rad2deg ( angle (X ) ) ) % fase
ylabel ( ' \ angle X [ deg ] ' )
xlabel ( ' \ omega [ rad/s] ' )
axis tight

figure
plot(t, x);
xlabel('t [s]');
ylabel('x(t)');

G = tf (10 ,[1 1 10]) ; % funcao de transferencia do sistema
u =0.2* randn (N ,1) ; % ruido de entrada % N definido anteriormente
y = lsim (G ,u ,t ) ; % resposta do sistema % t definido anteriormente

figure
plot (t ,u ,t , y )
legend ( ' u(t) ' , ' y(t) ' )
xlabel ( ' t [s] ' )

Y = fft ( y) ;

figure
subplot (2 ,1 ,1);
semilogx (w , 20* log10 ( abs (Y ) ) ) ;
ylabel ( ' |Y| [dB] ' )
axis tight
subplot (2 ,1 ,2)
semilogx (w , unwrap ( rad2deg ( unwrap ( angle (Y ) ) ) )) ;
ylabel ( ' \ angle Y [ deg ] ' )
xlabel ( ' \ omega [ rad/s] ' )
axis tight