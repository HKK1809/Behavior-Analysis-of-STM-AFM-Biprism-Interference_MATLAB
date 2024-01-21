%Assume you are to use a feedback loop (similar that shown in slide 2-28) with a
% loop bandwidth of B = 75kHz and the dominant thermal noise source is equivalent
% to a resistance of RN when referred to the output (i.e. at the piezo-actuator).
% Calculate the size of RN required to maintain sufficient accuracy to measure to
% atomic resolution (i.e. about 0.1 nm) at room temperature.

%Constants
boltzman = 1.380649e-23;
T = 293;
f = 75000;
delta_x = 0.1e-9;

%voltage calculation
    %Dimentions of Tube 
    H_tube= 0.5e-3;
    D_tube = 10e-3;
    L_tube = 30e-3;

    %Tripod Dimentions
    H_tripod = 0.75e-3;
    L_tripod = 30e-3;

D_x_tube = ((pi*D_tube*H_tube)/ (power(2,1.5)*power(L_tube,2)))*0.04*(1e-6);
D_z = (H_tripod/L_tripod)*0.018*(1e-6);

V_tube = (delta_x*pi*D_tube*H_tube)/(power(2,1.5)*D_x_tube*power(L_tube,2));
V_tripod = (delta_x*H_tripod)/(D_x_tube*L_tripod);

R_tube = (V_tube*V_tube)/(4*boltzman*T*f)
R_tripod = (V_tripod*V_tripod)/(4*boltzman*T*f)
