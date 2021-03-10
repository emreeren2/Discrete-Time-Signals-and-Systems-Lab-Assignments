function mydftmtx(N)
    D = zeros(N,N);
    Wn= exp(-1i*2*pi*(1/N));
    for k=1:1:N
        for n=1:1:N
            D(k,n)= Wn^((k-1)*(n-1));
        end
    end
end
 
