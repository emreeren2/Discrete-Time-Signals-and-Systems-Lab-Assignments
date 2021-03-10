[x,fs] =audioread('music2.wav');
Wp = (2*pi*500)/fs;
Ws = (2*pi*700)/fs;

Rp= 0.2;
Rs= 45 ;

[N, Wn] = buttord(Wp, Ws, Rp, Rs);
[b,a] = butter(N,Wn,'low'); %Low-pass

[z,p,k] = butter(N,Wn,'low');
sos = zp2sos(z,p,k);
figure(1); 
fvtool(sos,'Analysis','freq')

figure(1);
zplane(b,a);

% figure(2);
% freqz(b,a);

x1= filter(b,a,x); 
soundsc(x1,fs);

