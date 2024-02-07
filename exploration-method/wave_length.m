function [wl1, wl2] = wave_length(velocity, frequency1, frequency2)
    wl1 = velocity / frequency1;
    wl2 = velocity / frequency2;
end
