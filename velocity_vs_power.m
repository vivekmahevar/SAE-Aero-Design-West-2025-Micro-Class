clc ;
clear all ;

 
% Plotting the graph of zero lift power

air_density = 1.225 ;
wing_surface_area = 0.424 ;
g = 9.81 ;
weight = (4361/1000)*g ;


velocity = 2:0.01:60 ;

%lift_coefficient = (2*weight*g)./(air_density*wing_surface_area*(velocity).^2) ;

aspect_ratio = 6.03 ;
ostwald_efficiency_factor = 0.8 ;

k = (1/(pi*aspect_ratio*ostwald_efficiency_factor)) ;

induceed_lift_power = (2*k*(weight)^2)./(air_density*wing_surface_area.*velocity) ;

% Calculating the parasite drag

mac = 262/1000 ;
air_dynamic_viscosity = 1.81e-5 ;

reynold_number = (air_density.*velocity*mac)/(air_dynamic_viscosity) ;

skin_friction_coefficient = 1.328./sqrt(reynold_number) ;

wetted_surface_area = 8*wing_surface_area ;

cd_0 = (wetted_surface_area.*skin_friction_coefficient)/wing_surface_area ;

zero_lift_power = 0.5*air_density*velocity.^3*wing_surface_area.*cd_0 ;

total_power = (zero_lift_power + induceed_lift_power) ;



power_available = 450 ;

hold on 

plot(velocity,total_power,'b','Linewidth',1.5) ;
yline(power_available,'r','Linewidth',1.5) ;



grid on
xlabel('Velocity(m/sec)') ;
ylabel('Power(watts)') ;
title('Power vs Velocity') ;
legend('Power required','Power available') ;

hold off



