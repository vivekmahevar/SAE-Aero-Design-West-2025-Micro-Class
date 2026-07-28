clc 
clear all


filePath_AOA = "C:\Users\mahev\Desktop\1.Design and Program Files\Matlab\SAE\Graph_plottings\AOA vs NP and Sm.xlsx" ;

data_AOA = readtable(filePath_AOA) ; 

x1 = data_AOA{:,1} ; 
y1 = data_AOA{:,3} ; 
y2 = data_AOA{:,5} ; 


figure(1) ;

plot(x1, y1,'b','Linewidth',1.5) ;

xlabel('Angle of Attack(degrees)') ; 
ylabel('Neutral Point(inches)') ; 
title('Neutral Point vs AOA') ;

grid on ;


figure(2) ;

plot(x1, y2,'r','Linewidth',1.5) ;


xlabel('Angle of Attack(degrees)') ; 
ylabel('Static Margin') ; 
title('Static Margin vs AOA') ;

grid on ;





