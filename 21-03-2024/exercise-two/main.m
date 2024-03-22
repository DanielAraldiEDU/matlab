x = [-8:0.5:8]';
y = x.^3 - 36 * x;

plot(x, y);
grid;
xlabel('Eixo X');
ylabel('Eixo Y');
title('y = x.^3 - 36 * x');
