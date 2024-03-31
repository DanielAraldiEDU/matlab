function [value] = functionX(length, root, volume, height)
    value = L * (((r ^ 2) .* acos((r - h) / r)) - ((r - h) .* sqrt((2 * r .* h) - (h .^ 2)))) - volume;
end
