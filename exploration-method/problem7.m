
% question 7
fprintf('Answer: 7\n');

rho7_min = 2.0 * 1000;  
rho7_max = 3.0 * 1000;  
rho7_avg = (rho7_min + rho7_max) / 2;

E7_min = 0.12 * 1e11;
E7_max = 1.1 * 1e11;  
E7_avg = (E7_min + E7_max) / 2;

nu7_min = 0.04; 
nu7_max = 0.3;   
nu7_avg = (nu7_min + nu7_max) / 2;


vp_rho_min = get_vp(E7_avg, nu7_avg, rho7_min); 
vp_rho_max = get_vp(E7_avg, nu7_avg, rho7_max); 

vp_E_min = get_vp(E7_min, nu7_avg, rho7_avg);
vp_E_max = get_vp(E7_max, nu7_avg, rho7_avg);

vp_nu_min = get_vp(E7_avg, nu7_min, rho7_avg);
vp_nu_max = get_vp(E7_avg, nu7_max, rho7_avg);

diff_rho = abs(vp_rho_max - vp_rho_min);
diff_E = abs(vp_E_max - vp_E_min);
diff_nu = abs(vp_nu_max - vp_nu_min);

if diff_rho > diff_E && diff_rho > diff_nu
    fprintf('Variations in density have the greatest effect on P-wave velocities\n');
elseif diff_E > diff_rho && diff_E > diff_nu
    fprintf('Variations in Young''s modulus have the greatest effect on P-wave velocities\n');
else
    fprintf('Variations in Poisson''s ratios have the greatest effect on P-wave velocities\n');
end

variations = struct("Youngs_Modulus_Variations", diff_E,...
                    "Poissons_Ratio_Variations", diff_nu,...
                    "Density_Variations", diff_rho);

field_names = fieldnames(variations);
for i = 1:numel(field_names)
    fprintf('%s = %.2f m/s\n', field_names{i}, variations.(field_names{i}));
end
