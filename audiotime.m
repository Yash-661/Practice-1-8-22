%Create a WAVE (.wav) file in the current folder.

load handel.mat
filename = 'handel.wav';
audiowrite(filename, y, Fs);
clear y Fs

% Read the data back into MATLAB using audioread.

[y, Fs] = audioread('handel.wav');

% Play the audio.

sound (y, Fs);

% Plot in time domain

t = linspace(0, length(y) / Fs, length(y));

figure;
plot(t, y)
title('time domain')
xlabel('time')
ylabel('amplitude')