function [Flag count] = evaluate(RealMaxFit, Fit, count, maxCount, accuracy_level)
Flag = 0;
count = count +1; 

if maxCount == -1
    for pp=1:size(Fit,2)
        if (RealMaxFit-Fit(pp)) < accuracy_level
                diffFlag(pp) = 1; %This is to ensure all population's Flag is 1
        else
                diffFlag(pp) = 0;
        end
    end

    Flag = 1;
    for ppp = 1:size(Fit,2)
        if diffFlag(ppp)*Flag == 1
            Flag = 1;
        else
            Flag = 0;
            break;
        end
    end
else
    if maxCount == count %once with 5000,1000 worked
           Flag = 1; 
    end
end