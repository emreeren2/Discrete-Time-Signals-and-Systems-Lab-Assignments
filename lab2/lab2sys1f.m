

[x,fs] = audioread('music1.wav');

m = 31;
b(1:m) = 1/m;
a = 1;
h = impz(b,a);

y1 = conv(x,h);

len = m-1;
x1 = [x;zeros(len,1)];
y2 = filter(b,a,x1);

subplot(211);
plot(y1);
subplot(212);
plot(y2);