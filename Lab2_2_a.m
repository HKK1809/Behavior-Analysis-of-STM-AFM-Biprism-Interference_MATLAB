% A HL6312G AlGaInP laser diode with a multi-quantum well (MQW) structure
% (data sheet on website) has a wavelength of λ = 635nm is used to generate a
% collimated beam that is incident on a biphase optical prism of width W = 5.0cm.
% This beam is modelled as an ideal plane wave. Using appropriate calculation and
% plotting code in Matlab solve the EM wave equation and generate a plot of the
% optical intensity distribution in the observation plane, which is at distance L from
% the prism, as shown below. (Choose values for L and θ such that the interference
% pattern has peak-valley structure on the order of 1mm.)

Lamda = 635e-9; % wavelength
W = 0.05; %
r = 1e-3;  % Width of fringes
k = 2*pi/Lamda; % Wavenumber
x = linspace(-W/2, W/2, 100);

% Caluculating L, distnace from prism to screen
%phi = (k*x*W)/(2*sqrt((L*L)+(W*W/16)));
% at x = 1mm, phi is equal to 2pi hence rearranging the above equaltion to
% calculate L
A =  (k*r*W)/(4*pi);
L = sqrt((A*A)+(W*W/16))

% USing the calculated value of L, calculate Theta;
Theta = tan(W/(L*4))

phi =  (x.*k*W)./(2*sqrt((L*L)+(W*W/16))); 
I = 2*( 1 + cos(phi));
 
plot (x,I);
xlabel('Observation Screen (m)')
ylabel ('Interference Pattern Observed')
title ('Interfarence Pattern Observed for a Plane Wave Incident on a Biprism')