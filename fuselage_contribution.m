clc ;
clear all ;
close all ;

% The Moment Contribution of the aircraft

%% The wing Contribution 

% Define the firces acting on the wing

wing_lift = 55 ;
wing_drag = 2 ;





%% The Tail Contribution 





%% The Fuselage Contribution

syms x

k = 0.6 ;
s = 4.5  ;
c = 1 ;
farea = 4 ;
a_0 = 2 ;
i_f = -1 ;

cm = ((k)/36.5*s*c)*farea^2*(a_0+i_f)*x ;

an = int(cm,0,5) ;

fprintf('%.2f',an) ;