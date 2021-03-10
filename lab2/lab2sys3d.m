



[x,fs] = audioread('music1.wav');

b = [0.0102, -0.0779, 0.1504, -0.0779, 0.0102];
a = 1;

y= filter(b,a,x);

sound(y,fs);  

subplot(211);
plot(x);
subplot(212);
plot(y);
