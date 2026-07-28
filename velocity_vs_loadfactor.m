clc
clear all

% Plotting the graph of velocity vs load factor

air_density = 1.225 ; 
wing_area = 0.424 ;
lift_coefficient = 0.5 ;
lift_coefficient_max = 1.8 ;
lift_coefficient_min = 1.2 ;
weight = 4.5*9.81 ;

velocity_stall = sqrt((2*weight)/(air_density*wing_area*lift_coefficient_max)) ;
velocity_cruise = sqrt((2*weight)/(air_density*wing_area*lift_coefficient)) ;

velocity_positive = 0:0.1:100 ;
velocity_negative = 0:0.1:90 ;

lift_positive = 0.5*air_density.*velocity_positive.^2*wing_area*lift_coefficient ;
lift_negative = -(0.5*air_density.*velocity_negative.^2*wing_area*lift_coefficient) ;

max_structural_load = 15 ;
min_structural_load = -10 ;

n_positive = lift_positive./weight ;
n_negative = lift_negative./weight ;

n_max = (0.5*air_density*velocity_cruise^2*wing_area*lift_coefficient_max)/(weight) ;
n_min = -(0.5*air_density*velocity_cruise^2*wing_area*lift_coefficient_min)/(weight) ; 


x_lim = [2,5] ;
y_value = 5 ;

figure(1) 
plot(x_lim,[y_value,y_value]) ;

figure(2)


hold on
plot(velocity_positive,n_positive,'b','LineWidth',1.5) ;
plot(velocity_negative,n_negative,'b','LineWidth',1.5) ;

yline(n_max,'b','LineWidth',1.5) ;
yline(n_min,'b','LineWidth',1.5) ;

yline(min_structural_load,'b','LineWidth',1.5) ;
yline(max_structural_load,'b','LineWidth',1.5) ;

grid on
xlabel('Velocity (ft/sec)') ;
ylabel('Load Factor (n)') ;
title('Load Factor vs Velocity') ;