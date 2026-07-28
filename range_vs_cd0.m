clc
clear all


% Plotting the graph of Range vs coefficient of drag 


air_density = 1.225 ;
wing_area = 0.424 ;
velocity = 19 ;
battery_voltage = 11.1 ;
battery_capacity_ah = 2.2 ;
battery_capacity_wh = battery_capacity_ah * battery_voltage ;

cd0 = 0.015:0.001:0.05 ;

drag = 0.5*air_density*velocity^2*wing_area.*cd0 ;

power = drag*velocity ;
current = power./battery_voltage ;

endurance = battery_capacity_wh./power ;
range =  endurance*velocity ;

subplot(1,2,1) ;
plot(cd0,range,'b','Linewidth',1.5) ;

grid on 
xlabel('Coefficient of parasite drag') ;
ylabel('Range(ft)') ;
title('Range Calculation') ;

subplot(1,2,2) ;
plot(cd0,endurance,'b','Linewidth',1.5) ;

grid on
xlabel('Coefficient of parasite drag') ;
ylabel('Endurance(hours)') ;
title('Endurance Calculation') ;




