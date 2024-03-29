function [x]=newton(x0,N,eps)
% newton-raphson algoritmo
% f = function que define a função da qual será calculada as raizes
% fp = function que define a derivada da função da qual será calculada as raizes
% N = 100;     % define número máximo de iterações
% eps = 1.e-2; % define erro (tolerancia)
maxval = 1000000.0;  % define valor para divergencia
xx = x0;
iter = 0;
while (N>0)
	xn = xx-func(xx)/derivadeFunc(xx);
    erro = abs((xn-xx)/xn);
    iter = iter +1;
	if erro<eps 
		x=xn;
        % iter = 100-N;
		disp(['Raiz obtida na iteração ', num2str(iter)]); 
		return;
    end;
	if  abs(func(xx))>maxval
		disp(iter);
        % disp(100-N);
		error('Solução diverge');
		break;
	end;
	N = N - 1;
	xx = xn;
end
  error('Não converge');
  return;
end
