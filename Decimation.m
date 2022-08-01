clc;
clear;
close all;

N = 250 ;
n = 0:1:N-1;
x = sin(2*pi*n/15);
M = 2;

figure(1)
stem(n,x);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');
title('Original Sequence');

a = 1;
b = fir1(5,0.5,'Low');
y = filter(b,a,x);

figure(2)
stem(n,y);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');
title('Filtered Sequence');

x1=y(1:M:N);
n1=1:1:N/M;
figure(3)

stem(n1-1,x1);
grid on;
xlabel('No.of.Samples');
ylabel('Amplitude');
