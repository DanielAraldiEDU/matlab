clc; clear;

XA = input('Coordenate X of A point: ');
YA = input('Coordenate Y of A point: ');
XB = input('Coordenate X of B point: ');
YB = input('Coordenate Y of B point: ');
XC = input('Coordenate X of C point: ');
YC = input('Coordenate Y of C point: ');

sideA = distance(XA, YA, XB, YB);
sideB = distance(XA, YA, XC, YC);
sideC = distance(XB, YB, XC, YC);

value = (sideA + sideB + sideC) / 2;

area = sqrt(value * (value - sideA) * (value - sideB) * (value - sideC));

disp(['The area between three points is: ', num2str(area)]);
