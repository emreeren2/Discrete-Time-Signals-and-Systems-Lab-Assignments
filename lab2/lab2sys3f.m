


[x,fs] = audioread('music2.wav');

b = [0.0102, -0.0779, 0.1504, -0.0779, 0.0102];
a = 1;
h = impz(b,a);

y1 = conv(x,h);
 
len = length(h) - 1;
x1 = [x;zeros(len,1)];
y2 = filter(b,a,x1);