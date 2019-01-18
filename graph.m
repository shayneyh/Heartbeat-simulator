
total_time_duration = 15;
duration_to_plot = 3;
datacell = {'Vout400000', 'Vout390000', 'Vout380000','Vout370000', 'Vout360000', 'Vout350000','Vout340000'};
namecell = {'400000','390000', '380000','370000', '360000', '350000','340000'};
mycell = cell(length(datacell),1);
for i = 1:length(datacell)      
   mycell{i} = eval(datacell{i}); 
end

cc=hsv(12);
figure;
hold on
for j = 1:length(mycell)
    fraction_time = duration_to_plot/total_time_duration;
    array_length = round(length(mycell{j})*fraction_time);
    plot(linspace(0,duration_to_plot,array_length), mycell{j}(1:array_length), 'linewidth',j/length(mycell)*3);
   
    
end

hold off
title('Purkinje Fibre Potential with different gNa')
xlabel('Time (s)');
ylabel('Membrane Potential (mV)');
legend(namecell);
