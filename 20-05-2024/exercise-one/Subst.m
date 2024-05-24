function [X] = Subst(Tsup)
% Entrada: Matriz Ampliada triangular superior, Tsup
% Saida:   Vetor solução X
% nl e nc são o numero de linhas e de colunas
[nl, nc] = size(Tsup);
n = nc-1;
A = Tsup(:, 1:n); % Matriz A
b = Tsup(:, nc);  % Vetor b
X = zeros(n,1);
X(n) = b(n)/A(n,n);
  for r=n-1:-1:1
    soma = 0;
    for j = r+1:n
        soma = soma +A(r,j)*X(j);
    end
    X(r) = (b(r) -soma)/A(r,r);
  end
end