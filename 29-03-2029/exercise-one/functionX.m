function [value] = functionX(length, root, height)
    value = length .* (((root .^ 2) .* acos((root - height) / root)) - ((root - height) .* sqrt((2 .* root .* height) - (height .^ 2))));
end
