function [dad mom] = select(encoded_pop, CumProb)
n=size(encoded_pop, 2);
sel = 0;
popN{1,2} = ('');


while(1)
    r = rand(1);
    for i = 1:n
        if CumProb(i) > r
            %selected
            sel = sel + 1;
            popN{1,sel} = encoded_pop{1,i};
            break
        end
    end
    %%all popoulation selected
    if 2 == sel 
        break;
    end 
end

dad = popN{1,1};
mom = popN{1,2};

end