function [c,k] = bissecao(a,b,erro)
fa = fibonacci(a); % f(x) avaliado em x=a
fb = fibonacci(b); % f(x) avaliado em x=b
k = 0; % contador de iterações
if (fa*fb) > 0
    disp ('o intervalo [a, b] não é correto, mude-o');
else
    while ((abs(b-a)/2)>erro)
       c = (a+b)/2;
       fc = fibonacci(c); % f(x) avaliado em x=c
       if (fa*fc)>0
         a = c;
         fa = fc;
       else
         b = c;
         fb = fc;
       end
         k = k +1;
    end
end
