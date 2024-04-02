function [value] = derivate(length, root, height)
    firstPart = root / sqrt((height * (2 * root - height) / root ^ 2));
    secondPart = (root - height) .^ 2 / sqrt(height * (2 * root - height));
    threePart = sqrt(height * (2 * root - height));
    value = length + (firstPart - secondPart + threePart);
end
