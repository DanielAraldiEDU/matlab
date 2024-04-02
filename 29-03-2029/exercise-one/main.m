volume = 10; length = 5; root = 1.6; x = [0:0.1:5]';

h(volume, root)
diameter(root)

plot(x, fx(length, root, volume, x)); grid on;
title('Alunos: Daniel Sansão Araldi e Rafael Mota Alves');
xlabel('Eixo X');
ylabel('Eixo Y');

a = -1; b = 1.5; error = 0.00001; repeats = 100;
[c, counter] = bisection(a, b, error, length, root, volume)

xx = x0(r);
xn = newton_raphson(xx, 100, error, length, root, volume)

plot(x, fx(length, root, volume, x)); grid on;
title('Alunos: Daniel Sansão Araldi e Rafael Mota Alves');
xlabel('Eixo X');
ylabel('Eixo Y');
