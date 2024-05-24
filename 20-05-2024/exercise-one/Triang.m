function [Tsup] = Triang(Ab)
% Triangularizacao
% Entrada : Matriz aumentada, Ab
% Saida : Matriz triangular superior, Tsup
  [nl, nc] = size(Ab);
  n = nc-1; % Numero de colunas de A
  Tsup = zeros(nl,nc);
  for p = 1:n-1
    for r = p+1:n
      m = Ab(r,p)/Ab(p,p);
      Ab(r,p) = 0;
      for c = p+1:n+1
        Ab(r,c) = Ab(r,c) - m * Ab(p,c);
      end
    end
  end
% Matriz triangular superior, Tsup
Tsup = Ab;
end