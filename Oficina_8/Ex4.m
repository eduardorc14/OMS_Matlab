clc
clear
close all

Ga = tf([100 500], [1 10 100]);
figure
bode(Ga);

Gb = tf([-100 500],[1 10 100]);
figure
bode(Gb);

Gc = tf(25, [1 4 25]);
figure
bode(Gc);

num = [0 1 1.8 9];
den = [1 1.2 9 0];
sys = tf(num, den);       
w = logspace(0.01, 2, 500); 

figure
bode(sys, w);              
