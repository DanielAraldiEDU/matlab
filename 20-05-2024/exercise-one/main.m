XYTable = [0.1 1.221; 0.6 3.320]

x = XYTable(:, 1)
y = XYTable(:, 2)
numbersOne = ones(2, 1)

Ab = [numbersOne x y]
AbT = Triang(Ab)
Xsol = Subst(AbT)

P1x0 = Xsol(1) + Xsol(2) * 0.2
