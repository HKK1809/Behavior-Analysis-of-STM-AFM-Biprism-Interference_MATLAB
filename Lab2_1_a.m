%Calculate and compare the relative sensitivities (lateral and vertical) of the two
%types of scanner for reasonable voltages

V = linspace(-250, 250, 1000);
%Dimentions of Tube 
H_tube= 0.5e-3;
D_tube = 10e-3;
L_tube = 30e-3;

%Tripod Dimentions
H_tripod = 0.75e-3;
L_tripod = 30e-3;

%Calculating D value for tube
D_x_tube = ((pi*D_tube*H_tube)/ (power(2,1.5)*power(L_tube,2)))*0.04*(1e-6);
D_z = (H_tripod/L_tripod)*0.018*(1e-6);


delta_x_tube = V.*((power(2,1.5)*D_x_tube*power(L_tube,2))/(pi*D_tube*H_tube));
delta_z_tube = V.*D_z*(L_tube/H_tube);
delta_x_tripod = V.*D_z*(L_tripod/H_tripod);
delta_z_tripod = V.*D_z*(L_tripod/H_tripod);

plot (delta_x_tube, delta_x_tripod)
hold on
plot (delta_z_tube, delta_z_tripod);
xlabel('Variation due to Tube')
ylabel('Variation due to Tripod')
title('Curves Comparing sensitivity of an STM Tube and STM tripod')
legend({'x-direction', 'y-direction'})


