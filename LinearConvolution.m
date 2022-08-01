clc;
clear all;
close all;

disp('linear convolution program');
x = input('enter input sequence x(n)');
m = length(x);
h = input('enter input sequence h(n)');
n = length(h);
x = [x,zeros(1,n)];

subplot(2,2,1);
stem(x);
grid;
title('inputsequence x(n) is');
xlabel('-->n');
ylabel('-->x(n)');

h = [h,zeros(1,m)];

subplot(2,2,2);
stem(h);
grid;
title('input sequence h(n) is');
xlabel('-->n');
ylabel('-->h(n)');

disp('linear convolution of x(n)&h(n) isy(n)');
y = zeros(1,m+n-1);

for i = 1:m+n-1
    y(i) = 0;
    for j = 1:m+n-1
        if(j<i+1)
            y(i) = y(i) + x(j) * h(i-j+1);
        end;
    end;
end;

disp(y)

subplot(2,2,[3,4]);
stem(y);
grid;
title('convolution of x(n)&h(n) is');
xlabel('-->n');
ylabel('-->y(n)');
