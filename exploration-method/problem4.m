% question 4
fprintf('Answer: 4\n');
rho4 = 2.60;  
rho4 = rho4 * 1000; 
E4 = 0.39 * 1e11; 
nu4 = 0.11;  

K4 = bulk_modulus(E4, nu4);
G4 = shear_modulus(E4, nu4);
vp4 = get_vp(E4, nu4, rho4);

fprintf('Velocity of compressional wave through homogeneous rock layer is = %.2f m/s\n', vp4);
