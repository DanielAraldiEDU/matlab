function [value] = newton_raphson(x0, repeats, tolerance, L, r, V)
    x = x0;
    counter = 0;
    maxval = 1000000.0;

    while (repeats > 0)
	    xn = x - fx(L, r, V, x) / derivade(L, r, V, x);
        error = abs((xn - x) / xn);
        counter = counter + 1;

	    if error < tolerance 
  		  value = xn;
  		  disp(['Root found: ', num2str(counter)]); 
  		  return;
      end;

	    if abs(fx(L, r, V, x)) > maxval
		    disp(counter);
		    error('Divergent solution');
		    break;
	    end;

	    repeats = repeats - 1;
	    x = xn;
    end

    error('Does not converge');
    return;
end
