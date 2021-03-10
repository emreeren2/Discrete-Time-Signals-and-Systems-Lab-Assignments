


[x,fs] = audioread('music1.wav');
m = 31;
b(1:m) = 1/m;
a = 1;

h = impz(b,a);
stem(h);

