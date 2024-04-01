% To do the second part of the derivate
function [value] = derivate(length, root, height)
    firstPart = 2 - ((h / r) .^ 2) - ((2 .* h) / r);
    secondPart = 0;
    value = (L / sqrt(firstPart)) - secondPart;
end
