% If instead of STM we chose to use atomic force microscopy (AFM) using the
% same measurement bandwidth in (b) with a cantilever quality factor of Q = 50,
% and force constant k = 1.0 N/m. What cantilever mass would be required to
% achieve atomic resolution at room temperature both at resonance and off
% resonance?

B = 75000;
Q = 50;
k = 1.0;
Rsq = power(0.1e-9,2);
T = 293;
boltzman = 1.380649e-23

% At resonance
Omega_Resonance = (4*boltzman*T*B)/(k*Rsq);
m_resonance = k/(Omega_Resonance*Omega_Resonance)

% No resonance
Omega = (4*boltzman*T*B)/(Q*k*Rsq);
m = k/(Omega*Omega)



