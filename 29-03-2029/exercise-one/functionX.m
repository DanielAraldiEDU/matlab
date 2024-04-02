function [value] = functionX(length, root, volume, height)
    value = length * (((root ^ 2) .* acos((root - height) / root)) - ((root - height) .* sqrt((2 * root .* height) - (height .^ 2)))) - volume;
end
