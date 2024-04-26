Ab = load('matrix.txt')

x0 = [0, 0, 0]'; iterator = 100; delta = 0.0001;

xSol = Seidel(Ab, x0, iterator, delta)
X = xSol(7, 2:4)'

A = Ab(1:3, 1:3)
b = Ab(:, 4)
Res = A * X - b
