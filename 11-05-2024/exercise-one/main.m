h0 = 13; a = 0; b = h0 / 2; h = (b - a) / 12;
x = [a:h:b]';
S = area(h0, x);

Trapezios(a, b, h, S)
Simpson(a, b, h, S)
