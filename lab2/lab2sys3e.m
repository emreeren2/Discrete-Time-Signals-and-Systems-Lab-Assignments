


[x,fs] = audioread('music2.wav');

b = [0.0102, -0.0779, 0.1504, -0.0779, 0.0102];
a = 1;
h = impz(b,a);

y1 = conv(x,h);
y2= filter(b,a,x);

sound(y1,fs);

subplot(211);
plot(y1);
subplot(212);
plot(y2);
