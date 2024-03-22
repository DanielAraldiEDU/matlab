a = [5, 3, -1];
size(a); 
% 1 3 (1 row and 3 columns)
a = a'; 
% transversal array
 
b = [-3, 0, -1];
size(b); 
% 1 3 (1 row and 3 columns)

x = (-5:2);
% x = -5 -4 -3 -2 -1 0 1 2
x = [1; -2.5; 11];
% x = 1.0
%     -2.50
%     11.0
size(x);
% 1 3 (3 rows and 1 column)

x = [-5:0.1:5]';
y = 2 * x + 1;
plot(x, y);
grid;
xlabel('Eixo Y');
xlabel('Eixo Y');
title('y = 2 * x + 1');
legend('Curve');

y = (20:50); 
% It's the same thing above, but 20 and 50

z = (-5:5:20)
% z = -5 0 5 10 15 20
