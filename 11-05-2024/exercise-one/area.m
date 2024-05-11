function [S] = area(h0, x)
    S = (2 * pi) .* (x .* sqrt(1 + (derivateFx(h0, x) .^ 2)));
end
