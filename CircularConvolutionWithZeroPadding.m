clc;
clear all;
close all;

disp('circular convolutionprogram');
x = input('enter input sequence x(n):');
m = length(x);
h = input('enter input sequence h(n):');
n = length(h);
N = m+n-1;

h = [h,zeros(1,N)];
x = [x,zeros(1,N)];

subplot(2,2,1); stem(x);
title('input sequence x(n) is:');
xlabel('--->n');ylabel('--->x(n)');
grid;

subplot(2,2,2);stem(h);
title('input sequence h(n) is:');
xlabel('--->n');ylabel('--->h(n)');
grid;

disp('circular convolution with zeropadding of x(n)&h(n) is y(n)');
y = zeros(1,N);
y(1) = 0;
a(1) = h(1);

for j = 2:N
    a(j) = h(N-j+2);
end;

for i = 1:n
    y(1) = y(1)+x(i)*a(i);
end;

for k = 2:N
    y(k) = 0;
    for j = 2:N
        x2(j) = a(j-1);
    end
    x2(1) = a(N);
    for i = 1:N
        if(i<N+1)
            a(i) = x2(i);
            y(k) = y(k)+x(i)*a(i);
        end;
    end;
end;

subplot(2,2,[3,4]);
disp(y);
stem(y);
title('CC with zero padding of x(n)&h(n)is:');
xlabel('--->n');
ylabel('--->y(n)');
grid;
