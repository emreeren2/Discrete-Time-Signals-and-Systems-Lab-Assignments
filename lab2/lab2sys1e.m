


[x,fs] = audioread('music1.wav');

m = 31;
b(1:m) = 1/m;
a = 1;
h = impz(b,a);

y1 = filter(b,a,x);

y2 = conv(x,h);


subplot(211);
plot(y1);
subplot(212);
plot(y2);
