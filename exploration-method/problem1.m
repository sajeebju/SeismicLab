% Dataset
Rock_Type = ["Shale (AZ)", "Siltstone (CO)", "Limestone (PA)", "Limestone (AZ)", "Quartzite (MT)", "Sandstone (WY)", ...
             "Slate (MA)", "Schist (MA)", "Schist (CO)", "Gneiss (MA)", "Marble (MD)", "Marble (VT)", "Granite (MA)", "Granite (MA)", ...
             "Gabbro (PA)", "Diabase (ME)", "Basalt (OR)", "Andesite (ID)", "Tuff (OR)"];
density = [2.67, 2.50, 2.71, 2.44, 2.66, 2.28, 2.67, 2.70, 2.70, 2.64, 2.87, 2.71, 2.66, 2.65, 3.05, 2.96, 2.74, 2.57, 1.45];
youngs_modulus = [0.120, 0.130, 0.337, 0.170, 0.636, 0.140, 0.487, 0.544, 0.680, 0.255, 0.717, 0.343, 0.416, 0.354, 0.727, 1.020, 0.630, 0.540, 0.014];
poissons_ratio = [0.040, 0.120, 0.156, 0.180, 0.115, 0.060, 0.115, 0.181, 0.200, 0.146, 0.270, 0.141, 0.055, 0.096, 0.162, 0.271, 0.220, 0.180, 0.110];

E1 = youngs_modulus * 10^11; 
nu1 = poissons_ratio;
rho1 = density * 1000;

K1 = bulk_modulus(E1, nu1);
G1 = shear_modulus(E1, nu1);
Vp1 = get_vp(E1, nu1, rho1);
Vs1 = get_vs(E1, nu1, rho1);

T = table(Rock_Type',density', youngs_modulus', poissons_ratio', K1', G1', Vp1', Vs1', 'VariableNames', {'Rock_Type', 'Density', 'Youngs modulus', 'Poissons Ratio', 'Bulk_Modulus', 'Shear_Modulus', 'Vp(m/s)', 'Vs(m/s)'});
disp(T);



