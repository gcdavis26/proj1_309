clc 
clear

alpha = 164; %degrees
lambda =  52; %degrees
rB = [6064;2942;1974]; %km, B frame
vB = [.4;4.6;-3.2]; %km/s, B frame

dcmNC = dcm3(alpha);
dcmCB = dcm2(lambda);
dcmNB = dcm2 * dcm3;
