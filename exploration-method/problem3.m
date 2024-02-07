% question 3
fprintf('Answer: 3\n');
velocity_bedrock = 4500; 
frequency_bedrock1 = 10; 
frequency_bedrock2 = 100;  

[wave_length1_bedrock, wave_length2_bedrock] = wave_length(velocity_bedrock, frequency_bedrock1, frequency_bedrock2);

fprintf('Wavelength for frequency 10 Hz through bedrock is = %f m\n', wave_length1_bedrock);
fprintf('Wavelength for frequency 100 Hz through bedrock is = %f m\n', wave_length2_bedrock);
