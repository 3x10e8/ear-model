function plot_zero_phase(b, a)
    [hw,fw] = zerophase(b,a,1024,"whole");
    
    z = roots(b);
    p = roots(a);
    
    plot3(cos(fw),sin(fw),hw)
    hold on
    plot3(cos(fw),sin(fw),zeros(size(fw)),'--')
    plot3(real(z),imag(z),zeros(size(z)),'o')
    plot3(real(p),imag(p),zeros(size(p)),'x')
    hold off
    xlabel("Real")
    ylabel("Imaginary")
    view(35,40)
    grid
end

