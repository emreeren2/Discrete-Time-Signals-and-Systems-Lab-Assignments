


[x,fs] = audioread('music1.wav');

b = [0.0102, -0.0779, 0.1504, -0.0779, 0.0102];
a = 1;

h = impz(b,a);
freqz(h);