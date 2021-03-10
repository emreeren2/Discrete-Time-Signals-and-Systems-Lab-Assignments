


[x,fs] = audioread('music1.wav');

m = 31;
b(1:m) = 1/m;
a = 1;
 
y= filter(b,a,x);
 
sound(y,fs);  

subplot(211);
plot(x);
subplot(212);
plot(y);
