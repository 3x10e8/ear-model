function plot_freqz(b, a)
    [hw,fw] = freqz(b,a,1024,"whole");
    
    z = roots(b);
    p = roots(a);
    

    figure()
    freqz(b, a)
    %ylim([-360, 0])

    figure()
    
    plot3(cos(fw),sin(fw),real(hw), ':', 'DisplayName', 'Re', 'LineWidth',2)
    hold on
    plot3(cos(fw),sin(fw),imag(hw), ':', 'DisplayName', 'Im', 'LineWidth',2)
    plot3(cos(fw),sin(fw),abs(hw), 'DisplayName', 'Abs', 'LineWidth',4)

    plot3(cos(fw),sin(fw),zeros(size(fw)),'--', 'DisplayName', 'Domain')
    plot3(real(z),imag(z),zeros(size(z)),'o','MarkerSize',6,'MarkerEdgeColor', 'k', 'LineWidth', 2, 'DisplayName', 'zeros')
    plot3(real(p),imag(p),zeros(size(p)),'x','MarkerSize',6,'MarkerEdgeColor', 'k', 'LineWidth', 2, 'DisplayName', 'poles')
    hold off
    xlabel("Real")
    ylabel("Imaginary")
    view(-40,25)
    axis([-1, 1, -1, 1, -1, 1])
    axis equal
    legend('FontSize', 12)
    grid

end