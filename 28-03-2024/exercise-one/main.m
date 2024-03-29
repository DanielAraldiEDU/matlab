smallestLimit = 0;
biggestLimit = 2;
x0 = 1;
delta = 0.0001;

[root, iterator] = bissecao(smallestLimit, biggestLimit, delta);
otherRoot = newton(x0, repeats, delta)

func(otherRoot);
func(root);
