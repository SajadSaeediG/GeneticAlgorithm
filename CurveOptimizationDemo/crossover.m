function [kid1 kid2 mate] = crossover(dad, mom, Pc, cromosom_len)

a = 1;
b = cromosom_len -1; 
CP = 4;%fix(a + (b-a)*rand(1));     %Cross over Point (a random number between [a,b]) 


R = rand(1);   

    if (R <= Pc)
        mate = 1;
        [kid1 kid2] = mate2(dad, mom, CP, cromosom_len);
    else
        kid1   = dad;
        kid2  = mom;       
        mate = 0;
    end
      
end

function [kid1 kid2] = mate2(dad, mom, CP, cromosom_len)
   dadHi = dad(1:CP);
   dadLo = dad(CP+1:cromosom_len);
   
   momHi = mom(1:CP);
   momLo = mom(CP+1:cromosom_len);

   kid1 = strcat(dadHi, momLo);
   kid2 = strcat(momHi, dadLo);
end