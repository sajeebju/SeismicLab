function vs = get_vs(youngs_modulus, poissons_ratio, density)
    vpvs = sqrt((1 - poissons_ratio) ./ (0.5 - poissons_ratio));
    vs = get_vp(youngs_modulus, poissons_ratio, density) ./ vpvs;
end
