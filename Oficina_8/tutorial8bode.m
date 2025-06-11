clc
clear
close all

G = tf (10 ,[1 1 10]) ; % funcao de transferencia do sistema
figure
bode ( G );