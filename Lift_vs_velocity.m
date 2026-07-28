clc
clear all

air_density = 1.225 ;
wing_surface_area = 0.424 ;
lift_coefficient = 1.8 ;
weight = 4.3*9.81 ;

velocity = 1:0.01:40 ;

lift = 0.5*air_density*(velocity).^2*wing_surface_area*lift_coefficient ;
figure(1)
plot(velocity,lift,'b','Linewidth',1.5) ;

grid on 
xlabel('Velocity(ft/s)') ;
ylabel('Lift(lbf)') ;
title('Lift vs Velocity') ;

v1 = 17 ;

n = (0.5*air_density*v1^2*wing_surface_area*lift_coefficient)/(weight) ;
disp(n)

figure(2)
n1 = lift./weight ;
plot(velocity,n1)
yline(n)



