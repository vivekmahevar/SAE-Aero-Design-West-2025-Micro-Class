clc
clear all

 
% Calculating the inducedd drag 

air_density = 1.225 ;
wing_surface_area = 0.424 ;
weight = 4361/1000 ;
g = 9.81 ;

velocity = 5:0.01:140 ;

lift_coefficient = (2*weight*g)./(air_density*wing_surface_area*(velocity).^2) ;

aspect_ratio = 6.03 ;
ostwald_efficiency_factor = 0.8 ;

k = (1/(pi*aspect_ratio*ostwald_efficiency_factor)) ;

induceed_drag = 0.5*air_density*velocity.^2*wing_surface_area*k.*lift_coefficient.^2 ;

% Calculating the parasite drag

mac = 262/1000 ;
air_dynamic_viscosity = 1.81e-5 ;

reynold_number = (air_density.*velocity*mac)/(air_dynamic_viscosity) ;

skin_friction_coefficient = 1.328./sqrt(reynold_number) ;

wetted_surface_area = 8*wing_surface_area ;

cd_0 = (wetted_surface_area.*skin_friction_coefficient)/wing_surface_area ;

parasite_drag =  0.5*air_density*velocity.^2*wing_surface_area.*cd_0 ;

total_drag = parasite_drag + induceed_drag ;

thrust_available = 3*9.81 ;

figure(1)
hold on
yline(thrust_available,'b','Linewidth',1.5) ;
plot(velocity,total_drag,'r','Linewidth',1.5) ;

grid on 
xlabel('Velocity(m/sec)') ;
ylabel('Thrust(Newtons)') ;
title('Thurst vs Velocity') ;
legend('Thrust Available','Thrust Required') ;

%%
figure(2) ;
hold on ;
plot(velocity,skin_friction_coefficient,'b','Linewidth',1.5) ;
plot(velocity,cd_0,'r','Linewidth',1.5)
grid on
legend('Skin friction','cd0','induceed') ;

figure(3)
plot(velocity,parasite_drag, 'y','Linewidth',1.5) ;


%%

plot(velocity,reynold_number, 'y','Linewidth',1.5) ;

