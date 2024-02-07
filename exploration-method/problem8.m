% question 8
fprintf('Answer: 8\n');
distance8 = 50;  
rho8 = 2.28 * 1000;  
E8 = 0.14 * 1e11;  
nu8 = 0.06; 
v_air8 = 343;  

vp8 = get_vp(E8, nu8, rho8);
vs8 = get_vs(E8, nu8, rho8);
vr8 = 0.9 * vs8;

time_air8 = distance8 / v_air8;
time_pwave8 = distance8 / vp8;
time_rwave8 = distance8 / vr8;

time_travel = struct("Time_travel_for_the_air_wave", time_air8, ...
                     "Time_travel_for_the_direct_compressional_wave", time_pwave8, ...
                     "Time_travel_for_the_surface_Rayleigh_wave", time_rwave8);

field_names = fieldnames(time_travel);
for i = 1:numel(field_names)
    fprintf('%s = %.3f s\n', field_names{i}, time_travel.(field_names{i}));
end
