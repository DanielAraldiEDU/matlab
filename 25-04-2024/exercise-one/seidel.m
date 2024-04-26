  function X = seidel(Ab,x0,Imax,E)
  [nl, nc] = size(Ab);
  n = nc-1;
  A = Ab(:, 1:n); % Matriz A
  b = Ab(:, nc);  % Vetor b
  X = zeros(n,n+2);
  for k = 1:Imax+1
    if k==1
       X(1,1) = k-1;
       for i = 1:n
          X(1,i+1) = x0(i);
       end
       X(1,n+2) = 0;    
    else  
      for i = 1:n
        soma1 = 0;
        soma2 = 0;        
        if (i-1 > 0) 
           for j=1:i-1,
              soma1 = soma1 + A(i,j)*x1(j);
           end
        end
        if (i+1 <= n)
           for j=i+1:n,
              soma2 = soma2 + A(i,j)*x0(j);
           end
        end         
        x1(i)   = (b(i) - soma1 - soma2)/A(i,i);
        err(i)  = abs(x1(i) - x0(i));
      end
      Emax = max(err);
      X(k,1) = k-1;
      for i = 1:n
        X(k,i+1) = x1(i);
      end
      X(k,n+2) = Emax;
      if (Emax <= E)
          break
      else
         x0 = x1;
      end
    end  
  end
  if(k==Imax) 
    disp(['Não converge em ', num2str(Imax),' iterações']);
  end
  end
