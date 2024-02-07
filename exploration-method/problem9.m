% question 9
rho9 = 2.62 * 1000; 
E9 = 0.16 * 1e11;    
nu9 = 0.29;          
v_air9 = 343;        
num_geophones9 = 12;
interval9 = 10;      
distances9 = (5 + interval9 * (0:num_geophones9-1));

vp9 = get_vp(E9, nu9, rho9);
vs9 = get_vs(E9, nu9, rho9);
vr9 = 0.9 * vs9;

time_air9 = distances9 / v_air9;
time_pwave9 = distances9 / vp9;
time_swave9 = distances9 / vs9;
time_rwave9 = distances9 / vr9;

plot_wave_data(distances9, time_air9, time_pwave9, time_swave9, time_rwave9);
