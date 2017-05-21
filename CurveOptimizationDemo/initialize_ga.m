function [m c  cromosom_len] = initial_ga(rmin, rmax, precision)
%This function initializes parameters related to encoding
%%%%%%%%%%%%%INPUTS
% rmin:      lower bound
% rmax:      upper bound
% r is real, z is integer
% r = m * z + c
%
%%%%%%%%%%%%%OUTPUT
% m, c
%
%%%%%%%%%%%%%OPERATION
%n fits in this relation
% (rmax-rmain)*10^precision < 2^n-1

R = (rmax-rmin)*10^precision;
maxN = 20;
cromosom_len = maxN;

for i = 1:20
    if(R/2^i < 1)  
         cromosom_len = i;
        break;
    end
end

m = (rmax-rmin)/(2^cromosom_len-1);
c = rmin;
