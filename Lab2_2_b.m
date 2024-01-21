% A collimated electron beam with particle velocities v is incident upon a biphase
% electron prism as illustrated in Section II of the Tonomara paper (see Activities
% above). Using appropriate calculation and plotting software use the solution to the
% Schrodinger wave equation as outlined in Section II of the Tonomara paper using
% the parameters given and generate a plot of the probability distribution for
% electrons in the observation plane.

Va = 10; %V, given in apper
vz = 1.5e8; % c/2, given in paper
b = 5e-3; %m, given in paper
a = 0.5e-6; %m, given in paper
hbar = 1.05457182e-34;
q = 1.602e-19;

x = linspace(-2e-7,2e-7,1000);

kx = ((pi*q*Va)/(hbar*vz))/(log(b/a))
Probamp = 4.*cos(x.*kx).*cos(x.*kx);
 
plot (x,Probamp)
xlabel('Observation Screen')
ylabel('Interference')
title('Interference Fringes as Observed on Screen')