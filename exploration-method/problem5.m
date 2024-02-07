% question 5
fprintf('Answer: 5\n');
rho5 = 2.04 * 1000;  
E5 = 0.07 * 1e11;
nu5 = 0.14; 

vs5 = get_vs(E5, nu5, rho5);

fprintf('Velocity of a shear wave in a homogeneous rock layer is = %.2f m/s\n', vs5);
