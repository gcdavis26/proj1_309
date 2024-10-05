clc 
clear

%Geoffrey Davis, Carlos Andrade
%We have completed this work with integrity.
 
alpha = 164; %degrees
lambda =  52; %degrees
rB = [6064;2942;1974]; %km, B frame
vB = [.4;4.6;-3.2]; %km/s, B frame

dcmNC = dcm3(alpha);
dcmCB = dcm1(lambda);
dcmNB = dcmCB * dcmNC;
dcmBN = transpose(dcmNB);
rN = dcmBN * rB;
vN = dcmBN * vB;

formatSpec = 'alpha is %3.0f degrees\n';
fprintf(formatSpec,alpha)

formatSpec = 'lambda is %2.0f degrees\n';
fprintf(formatSpec,lambda)

fprintf('rB = [%4.0f %4.0f %4.0f ] (km)\n', rB)

fprintf('vB = [%4.3f %4.3f %4.3f ] (km/s)\n', vB)

fprintf('CNB = [%8.4f %8.4f %8.4f ] \n', dcmNB(1,:), dcmNB(2,:), dcmNB(3,:) )

fprintf('rN = [%4.0f %4.0f %4.0f ] (km)\n', rN)

fprintf('vN = [%4.3f %4.3f %4.3f ] (km/s)\n', vN)