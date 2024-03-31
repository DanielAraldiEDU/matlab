function [c, counter] = bisection(a, b, error, length, root, volume)
    fa = fx(length, root, volume, a);
    fb = fx(length, root, volume, b);
    counter = 0;

    if (fa * fb) > 0
        disp('Invalid interval between A and B.');
    else
        while ((abs(b - a) / 2) > error)
           c = (a + b) / 2;
           fc = fx(length, root, volume, c);
    
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
