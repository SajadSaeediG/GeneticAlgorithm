function [calcFit calcSelProb calcCumProb sumT] = calc_fit(decoded_pop)

    Sn = size(decoded_pop,2);
    calcFit = zeros(1,Sn);
    calcSelProb = zeros(1,Sn);
    calcCumProb = zeros(1,Sn);

    
    Sum = 0; 
    for j=1:Sn
        %Claculating fitness value
        calcFit(1,j) = fitfun(decoded_pop(1,j));

        %Claculating Added fit
        Sum = Sum + calcFit(1,j);
    end
    
    sumT = Sum;
    
    sum2 = 0;
    for j=1:Sn
        calcSelProb(1,j) = calcFit(1,j)/Sum;      
        sum2 = sum2 + calcSelProb(1,j);
        calcCumProb(1,j) = sum2;
    end
end


function out = fitfun(in)
%    out = sin(in);%fit function
    out = in.*sin(in*3)+2.5;
end