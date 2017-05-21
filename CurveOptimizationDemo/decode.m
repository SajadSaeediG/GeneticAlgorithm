function dpop = decode(encoded_pop,precision, m, c)
%This function decodes binary string to real values
n = size(encoded_pop,2);
dpop = zeros(1,n);
for i= 1:n
    temp = bin2dec(encoded_pop{1,i}); %this is decimal int value
    dpop(1,i) = temp*m+c;
end

end