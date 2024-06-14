function [XY] = euler(a,b,h,y0)
% Resolucao de equacoes diferenciais ordinarias por Euler Simples
% Entrada:[a,b] - intervalo de integracao
%  h - passo da integracao
%  y0 - condicao inicial em x0
X(1) = a;
Y(1) = y0;
Exato(1) = f2(X(1), Y(1));% retirar essa linha caso não se conheça a solução analítica
n = (b-a)/h;
for k = 1:n
    xk = X(k);
    yk = Y(k);
    hf1 = h * f1(xk, yk);
    Y(k+1) = Y(k) + hf1;
    X(k+1) = X(k) + h;
    Exato(k+1) = f2(X(k+1), Y(k+1)); % retirar essa linha caso não se conheça a solução analítica
    Erro(k+1) = abs(Y(k+1)-Exato(k+1)); %retirar essa linha caso não se conheça a solução analítica
end
 XY=[X' Y' Exato' Erro']; % retirar essa linha caso não se conheça a solução analítica
% XY = [X' Y']; %retirar comentário desta linha caso não se conheça a solução analítica
end
