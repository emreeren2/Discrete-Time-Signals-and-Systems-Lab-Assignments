% FIR-LP
[x,fs] =audioread('music2.wav');
f = [500 700]; % Cut-off frequencies 
Rp= 0.2 ;
Rs= 45;
a = [1 0]; % Desired amplitude

dev = [(10^(Rp/20)-1)/(10^(Rp/20)+1) 10^(-Rs/20)]; % Translating into FIR specs 
[n,fo,ao,w] = firpmord(f,a,dev,fs);
b = firpm(n,fo,ao,w);

figure(1); freqz(b,fs); % Plots the magnitude responses
h = fvtool(b); 
figure(2); zplane(b);

x1=filter(b,1,x); 
soundsc(x1,fs);
