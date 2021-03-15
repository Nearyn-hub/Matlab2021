% x + y = 16 ; f = x^3 * y^5 
% => x = 16 - y
% => f(x) = (16-y)^3 * y^5
f = @(x) (16-x)^3 * y^5;

% calculate f prime and decide maximum value
fp = @(x) x; % f prime; derivative of f
maxFp = 0; % when fp = 0 (maximum value)

% plot function
hold on
fplot(f)
plot(maxFp, f(maxFp), 'r*')
hold off

% style
title("Block D: 4.8.4")
legend("a", "b")
xlabel("x-axis")
ylabel("y-axis")