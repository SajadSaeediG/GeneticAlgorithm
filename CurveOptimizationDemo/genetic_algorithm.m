%----------------------------------
% June 2010
% Sajad Saeedi
% University of New Brunswick (UNB)
% Fredericton, NB, Canada
% email: sajad.saeedi.g@gmail.com
% website: http://www.sajad-saeedi.ca/
% ----------------------------------
% Genetic Algorithms (GA)
%
% Description:
%
% This is a simple GA implementation. 
% It finds the maximum point of a single-input function. 
% Here this function is used: f(x) = 2.5 + x sin(3x)
%
% Simply press 'Run' or hit F5 to see the demo, or 
% type genetic_algorithm() in the command window and hit Enter.
%
% Change the parameters to tune the optimization.
%
% This code has been updated and tested in MATLAB R2016b
% ----------------------------------
function genetic_algorithm()
clear all;
close all;
clc;

%% Initialaization
Pc = 0.9;     % crossover probability
Pm = 0.01;    % mutation probability

rmin = 0;     % minimum range
rmax = pi;    % maximum range
precision = 3;
pop = [0.01, 0.1, 0.15, 0.2, 0.35, 0.5, 1.2, 1.9, 2.1, 3];  % initial poulation

%% plot
x = linspace(0,pi, 100);
y = x.*sin(3*x)+2.5;
plot(x, y);
RealMaxFit = max(y);
hold on; 

axis([0 pi min(y)-.5 max(y)+.5]);xlabel('x');ylabel('f(x)');
text(0.2,4.3,'f(x)= 2.5 + x*sin(3*x)')

plot(pop, pop.*sin(3*pop)+2.5, 'o');
hold on;
%% GA
[m c  cromosom_len] = initialize_ga(rmin, rmax, precision);
encoded_pop = encode(pop, precision, m, c, cromosom_len);

generation = 1;
accuracy_level = 0.001;
decoded_pop = [];

while (1)
    %get encoded data and decode them
    decoded_pop = decode(encoded_pop, precision, m, c);
    
    %calculates fit and probabilities
    [Fit SelProb CumProb sum] = calc_fit(decoded_pop);
    TotalFit(generation) = sum;
    
    %stop criterion
    [Flag generation] = evaluate(RealMaxFit, Fit, generation, -1, accuracy_level);
    if(Flag) break;end
    
    %selects new population and apply genetic operations 
    newpop = 0;    
    while (1)
        [dad mom]   = select(encoded_pop, CumProb);
        [kid1 kid2 mate] = crossover(dad, mom, Pc, cromosom_len);

        if mate == 1
            newpop = newpop+1;
            pop3{1,newpop} = kid1;
            newpop = newpop+1;
            pop3{1,newpop} = kid2;            
        else

        end
        
        if newpop == size(encoded_pop,2)
            break;
        end
    end        
  
    pop4 = mutation(pop3, Pm,  cromosom_len);

    %replace old population by new population
    encoded_pop = pop4;
end

%% plots
plot(decoded_pop, Fit, '*r', 'MarkerSize',10);
L = legend('Optimization Curve','Initial Population','Final Population');
L.Location = 'NorthWest';
title('Initial and Final Population')
str = strcat('Generations = ',num2str(generation));
text(.2,4.0,str);

fprintf('Final popultion is \n'); 
fprintf('%f \n', decoded_pop(:)); 
fprintf('Number of generations is %d\n\n', generation);

RealMax = RealMaxFit;
Fitness = Fit';

 figure;
 plot(TotalFit);
 xlabel('Generation');
 ylabel('Total Fitness');
 title('Total Fitness vs. Generation');