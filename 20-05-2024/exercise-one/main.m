XYTable = [0.1 1.221; 0.6 3.320]

x = XYTable(:, 1)
y = XYTable(:, 2)
numbersOne = ones(2, 1)

Ab = [numbersOne x y]
AbT = Triang(Ab)
Xsol1 = Subst(AbT)

P1x0 = Xsol1(1) + Xsol1(2) * 0.2

XYTable = [0.1 1.221; 0.6 3.320; 0.8 4.953]

x = XYTable(:, 1)
y = XYTable(:, 2)

numbersOne = ones(2, 1)

Ab = [numbersOne x x.^2 y]
AbT = Triang(Ab)
Xsol2 = Subst(AbT)

P2x0 = Xsol2(1) + (Xsol2(2) * 0.2) + (Xsol2(3) * 0.2 ^ 2)
