clc;
clear;
close all;

x = input('enter the input sequence with in square bracketes');
N = input ('enter N value for N-point DFT');
L = length(x);

if L>N
   disp('N should greater than L')
   return
end

for k=0:N-1
   X(k+1)=0;
   for n=0:N-1
      X(k+1)=X(k+1)+x(n+1)*exp((-j*2*pi*k*n)/N);
   end
end

p = angle(X);
X = abs(X);
disp(X)

subplot(2,1,1)
stem(X)
title('Magnitude Plot')
xlabel('frequency k')

subplot(2,1,2)
stem(p*180/pi)
title('phase Plot')
xlabel('frequency k')
ylabel('Angle |X(k)')