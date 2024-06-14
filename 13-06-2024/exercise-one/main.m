Lim1 = 0; Lim2 = 1; delta = 0.1; y0 = 1;
Xsol = euler(Lim1, Lim2, delta, y0);

t = Xsol(:,1)
Yeuler = Xsol(:,2)
Yanal = Xsol(:,3)

plot(t, Yanal, t, Yeuler)
grid
xlabel('Eixo X')
ylabel('Eixo Y')
legend('Analítico', 'Euler')
title('Daniel Sansão Araldi')
