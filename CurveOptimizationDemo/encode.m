function encoded = encode(pop, precision, m, c, cromosom_len)
%This function encodes the population to binary string
%%%%%%%%%%%%%INPUTS
% m, c
% pop:       decimal input popolation to be encoded
% precision: digit precision
%
%%%%%%%%%%%%%OUTPUT
% encoded:    binart string encoded popolation
%
%%%%%%%%%%%%%OPERATION
% r:         real value
% z:         integer value
% first real vaue is converted to the int value according to
% following relation
% r = c+m*z
% then the integer value is converted to binary string
% n is th according to the following relation
% (max(pop)-min(pop))*10^precision < 2^n-1;


pop1 = round((pop-c)/m);
Sn = size(pop1,2);
encoded{1,Sn} = ('');

for i = 1:Sn
    temp = dec2bin(pop1(1,i),cromosom_len);
    encoded{1,i} = temp;
end

end