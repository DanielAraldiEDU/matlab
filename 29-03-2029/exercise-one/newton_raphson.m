function [value] = newton_raphson(x0, repeats, tolerance, length, root, volume)
    x = x0;
    counter = 0;
    max_value = 1000000.0;

    while (repeats > 0)
	    xn = x - fx(length, root, volume, x) / derivate(length, root, volume, x);
        error = abs((xn - x) / xn);
        counter = counter + 1;

	    if error < tolerance 
  		  value = xn;
  		  disp(['Root found: ', num2str(counter)]); 
  		  return;
      end;

	    if abs(fx(length, root, volume, x)) > max_value
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
