function G = shear_modulus(youngs_modulus, poissons_ratio)
    G = youngs_modulus ./ (2 .* (1 + poissons_ratio));
end
