% FIR HIGH-PASS
[x,fs] = audioread('music2.wav');

Rp = 0.2;
Rs = 45;
f = [1700 1900]; % Cut-off frequencies 
a = [1 0]; % Desired amplitude

dev = [(10^(Rp/20)-1)/(10^(Rp/20)+1) 10^(-Rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,fs);
b = firpm(n,fo,ao,w);
z = firlp2hp(b); %Low-pass to High-pass

%figure(1); freqz(z,1,fs);% Plots the magnitude and phase responses 
h = fvtool(z); 
figure(2); zplane(z);% Pole-zero plot

x1=filter(z,1,x);
soundsc(x1,fs);