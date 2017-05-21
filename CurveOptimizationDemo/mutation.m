function pop4 = mutation(pop3, Pm, cromosom_len)
nPop = size(pop3,2);
for k = 1:nPop
    temp = pop3{1,k};

    for l = 1:cromosom_len  %do for each gene
        r = rand(1);    
        if r < Pm %do mutation for the gene
            if temp(l) == '1'
                temp(l) = '0';               
            else
                temp(l) = '1';
            end            
        end
    end
    
    pop4{1,k} = temp;
end
