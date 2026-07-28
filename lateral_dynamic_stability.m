clc
clear all

% Plotting the graphs of dynamic lateral stability 

% Velocity vs time 

velocity = 3.5 ;
damping_ratio = 0.3 ;
natural_frequency = 4    ;
w_d = natural_frequency*sqrt(1-damping_ratio^2) ;  
phi = 3.5 ;

t = 0:0.01:10 ;

displacement = velocity*exp(-damping_ratio*natural_frequency.*t).*sin(w_d.*t+phi+4.5) ;

subplot(2,2,1) ;
plot(t,displacement,'b','Linewidth',1.5) ; 

grid on 

xlabel('Time(sec)') ;
ylabel('Velocity(ft/sec)') ;
title('Velocity vs time') ;


% roll(p) vs time 

roll_amplitude = 5 ;
roll_damping_ratio = 0.25 ;
roll_natural_frequency = 4.5 ;
roll_phi = 1 ;
roll_w_d = roll_natural_frequency*sqrt(1-roll_damping_ratio^2) ;  

roll = -roll_amplitude*exp(-roll_damping_ratio*roll_natural_frequency.*t).*cos(roll_w_d.*t+roll_phi+5) ;

subplot(2,2,2) ;
plot(t,roll,'b','Linewidth',1.5) ;

grid on 

xlabel('Time(sec)') ;
ylabel('p(dec/sec)') ;
title('p vs time') ;


% yaw(r) vs time 

yaw_amplitude = 14 ;
yaw_damping_ratio = 0.3 ;
yaw_natural_frequency = 4 ;
yaw_phi = 0.9 ;

yaw_w_d = yaw_natural_frequency*sqrt(1-yaw_damping_ratio^2) ;  

yaw = yaw_amplitude*exp(-yaw_damping_ratio*yaw_natural_frequency.*t).*sin(yaw_w_d.*t+yaw_phi) ;

subplot(2,2,3) ;
plot(t,yaw,'b','Linewidth',1.5) ;

grid on 

xlabel('Time(sec)') ;
ylabel('r(deg/sec)') ;
title('r vs time') ;

% phi(bank angle) vs time 

pitch_amplitude = 3 ;
pitch_damping_ratio = 0.3 ;
pitch_natural_frequency = 4 ;
pitch_phi = 0.1 ;

pitch_w_d = pitch_natural_frequency*sqrt(1-pitch_damping_ratio^2) ;  

pitch = -pitch_amplitude*exp(-pitch_damping_ratio*pitch_natural_frequency.*t).*cos(pitch_w_d.*t+pitch_phi) ;

subplot(2,2,4) ;
plot(t,pitch,'b','Linewidth',1.5) ;

grid on 

xlabel('Time(sec)') ;
ylabel('phi(deg/sec)') ;
title('phi vs time') ;
    







