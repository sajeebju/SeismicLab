% Question 2
disp('Answer: 2');
velocity2 = 1400; 
frequency1 = 10; 
frequency2 = 100; 
[wl1, wl2] = wave_length(velocity2, frequency1, frequency2);
fprintf('Wavelength for frequency 10 Hz is = %f m\n', wl1);
fprintf('Wavelength for frequency 100 Hz is = %f m\n', wl2);