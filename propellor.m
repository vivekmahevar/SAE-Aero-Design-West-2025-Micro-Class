clc 
clear all


% Plotting the graph of Propeller Selection

diameter1 = 0.83 ; 
pitch1= 0.45  ; 
rpm = 13875 ; 
velocity = 0:0.01:90 ; 

f11 = (1.225 * (pi * (0.0254 * diameter1)^2) / 4) ;
f21 = (((rpm * 0.0254 * pitch1)^2) - ((rpm * 0.0254 * pitch1) .* velocity)) ;
f31= ((diameter1) / (3.29546 * pitch1)^1.5) ;

thrust1 = f11 * f21 * f31 ;

diameter2 = 1.08 ;    
pitch2 = 0.5 ;

f12 = (1.225 * (pi * (0.0254 * diameter2)^2) / 4) ;
f22 = (((rpm * 0.0254 * pitch2)^2) - ((rpm * 0.0254 * pitch2) .* velocity)) ;
f32 = ((diameter2) / (3.29546 * pitch2)^1.5) ;

thrust2 = f12 * f22 * f32 ;

diameter3 = 1 ;
pitch3 = 0.5 ;

f13 = (1.225 * (pi * (0.0254 * diameter3)^2) / 4) ;
f23 = (((rpm * 0.0254 * pitch3)^2) - ((rpm * 0.0254 * pitch3) .* velocity)) ;
f33 = ((diameter3) / (3.29546 * pitch3)^1.5) ;

thrust3 = f13 * f23 * f33 ;

hold on
plot(velocity,thrust1,'b','Linewidth',1.5) ;
plot(velocity,thrust2,'r','Linewidth',1.5) ;
plot(velocity,thrust3,'y','Linewidth',1.5) ;

grid on
xlabel('Velocity(ft/s)') ;
ylabel('Thrust(lbf)') ;
title('Propeller Selection') ;
legend('Propeller size 10*5.5','Propeller size 13*6','Propeller size 12*6') ;








        