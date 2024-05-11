function [value] = derivativeFx(h0, x)
    value = h0 * (-sin((pi / h0) .* x) * (pi / h0));
end
