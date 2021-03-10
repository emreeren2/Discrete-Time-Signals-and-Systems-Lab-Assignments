
[x,fs] = audioread('scales.wav');
b = [1, -4, 4, -1];
a = [1, 1.5, 1, 0.25];

h = impz(b,a);
stem(h); 
freqz(h); 

y = filter(b,a,x);
sound(y,fs);

subplot(211); plot(x);
subplot(212); plot(y);

%PROBLEM 1 iv-d)