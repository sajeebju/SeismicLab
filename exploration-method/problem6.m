% question 6
fprintf('Answer: 6\n');
rho6 = 2.52 * 1000;
E6 = 0.14 * 1e11;
nu6 = 0.16;  

vs6 = get_vs(E6, nu6, rho6);
vr6 = 0.9 * vs6;

fprintf('Velocity of Rayleigh waves in a homogeneous rock layer is = %.2f m/s\n', vr6);
