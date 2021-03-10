[x,fs] = audioread('scales.wav');
b = [1, 4, 4, 1];
a = [1, -1.4, 0.9025, -0.2263];

h = impz(b,a);
stem(h); 
freqz(h);  

y = filter(b,a,x);
sound(y,fs);

subplot(211); 
plot(x);

subplot(212); 
plot(y);

%problem 1 ii-d)