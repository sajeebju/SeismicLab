function plot_wave_data(distances, time_air, time_pwave, time_swave, time_rwave)
    figure;
    plot(distances, time_air, 'o-', 'DisplayName', 'Air Wave'); 
    hold on; 
    plot(distances, time_pwave, 'o-', 'DisplayName', 'P-Wave'); 
    plot(distances, time_swave, 'o-', 'DisplayName', 'S-Wave'); 
    plot(distances, time_rwave, 'o-', 'DisplayName', 'Rayleigh Wave'); 

    xlabel('Geophone Position (m)'); 
    ylabel('Time of Arrival (s)'); 
    title('Time of Arrival vs Geophone Position'); 
    legend('show'); 
    grid on; 
    hold off;
end
