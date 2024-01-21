% Repeat the calculation in (b) by using a Monte Carlo calculation method rather
% than using the continuous solution to the wave equation. (i.e. randomly transmit
% individual electrons as particles having the same velocity and direction deflected
% through the biprism and then count the linear density (number/length) hitting
% various positions in the observation plane.)
% i) under what assumptions about the electrons do you get no interference?
% ii) what assumptions are required to get results that match part (b)?
% iii) how do the results change if the electrons have a distribution of velocities Δv?
% iv) how would you incorporate the effects of (iii) into part (b) above?

Va = 10; %V, given in apper
vz = 1.5e8; % c/2, given in paper
b = 5e-3; %m, given in paper
a = 0.5e-6; %m, given in paper
hbar = 1.05457182e-34;
q = 1.602e-19;

x = linspace(-2e-7,2e-7,1000);

kx = ((pi*q*Va)/(hbar*vz))/(log(b/a));
Probamp = 4.*cos(x.*kx).*cos(x.*kx);

y = randsample(x,10000000,true,Probamp);
x_vector = linspace(-1e-7,1e-7,length(y));

histogram(y,x_vector)
xlabel('Observation Screen')
ylabel('Interference Distribution')
title('Monte Carlo Simulation Results for Electrons Interactiing with the Biprism')



