function K = bulk_modulus(youngs_modulus, poissons_ratio)
    K = youngs_modulus ./ (3 .* (1 - 2 .* poissons_ratio));
end
