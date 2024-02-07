function vp = get_vp(youngs_modulus, poissons_ratio, density)
    vp = sqrt(((1 - poissons_ratio) .* youngs_modulus) ./ ((1 - 2 .* poissons_ratio) .* (1 + poissons_ratio) .* density));
end
