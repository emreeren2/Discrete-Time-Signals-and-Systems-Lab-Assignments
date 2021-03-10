



function conv = myconv(input1,input2);
    
    len1 = length(input1);
    len2 = length(input2);
    
    input1zeropadd = [input1 zeros(1,len2-1)];
    input2zeropadd = [input2 zeros(1,len1-1)];
    
    input1 = fft(input1zeropadd)
    input2 = fft(input2zeropadd)
   
    conv =ifft(input1.*input2);
    
end


