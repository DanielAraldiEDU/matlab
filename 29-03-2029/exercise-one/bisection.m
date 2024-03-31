function [c, counter] = bisection(a, b, error)
    fa = fibonacci(a);
    fb = fibonacci(b);
    counter = 0;

    if (fa * fb) > 0
        disp('Invalid interval between A and B.');
    else
        while ((abs(b - a) / 2) > error)
           c = (a + b) / 2;
           fc = fibonacci(c);
    
           if (fa * fc) > 0
             a = c;
             fa = fc;
           else
             b = c;
             fb = fc;
           end
             counter = counter + 1;
        end
    end
end
