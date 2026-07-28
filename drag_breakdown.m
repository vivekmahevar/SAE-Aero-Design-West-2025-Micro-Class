clc
clear all


%% Plotting the graph of Drag Break down


% 0.2156 lbf 

% Calculating the inducedd drag 
air_density = 1.225 ;
wing_surface_area = 0.424 ;
velocity = 5:0.01:50 ;
weight = 4361/1000 ;
lift_coefficient = ((2*weight*9.81)./(air_density*wing_surface_area*(velocity).^2)) ;

aspect_ratio = 6.03 ;
ostwald_efficiency_factor = 0.8 ;

k = (1/(pi*aspect_ratio*ostwald_efficiency_factor)) ;

induceed_drag = 0.5*air_density*velocity.^2*wing_surface_area*k.*lift_coefficient.^2 ;

% Calculating the parasite drag

cd_0 = 0.02 ;

parasite_drag =  0.5*air_density*velocity.^2*wing_surface_area*cd_0 ;

drag_coefficient = parasite_drag + induceed_drag ;

figure(1)
hold on
plot(velocity,induceed_drag,'b','Linewidth',1.5) ;
plot(velocity,parasite_drag,'r','Linewidth',1.5) ;
plot(velocity,drag_coefficient,'y','Linewidth',1.5) ;

grid on 
xlabel('Velocity(ft/sec)') ;
ylabel('Drag(lbf)') ;
title('Drag Breakdown') ;
legend('Induceed Drag','Parasite Drag','Total Drag') ;
%xlim([5 60]) ;
%figure(2) ;
%plot(velocity,)

