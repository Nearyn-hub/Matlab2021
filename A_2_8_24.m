format long % 6 decimal places

% plot function
f = @(x) (2*x+1) ./ ((x.^2) + x + 1);
g = @(x) -(f(x)); % inverse f
fplot(f)
grid on
axis([-50 50 -2 2]) % assuming trend continues, critical points ( f'(x)=0 )
% should all be in the open interval (-50, 50)

% calculate critical points
% function has a minimum and a maximum value, the 2 critical points
fmin = fminbnd(f, -50, 50);
fmax = fminbnd(g, -50, 50);

% mark out critical points
hold on
fplot(f, [-50, 50])
plot(fmin, f(fmin), 'r*')
plot(fmax, f(fmax), 'r*')
hold off

% style
title("Block B: 2.8.24")
legend("(2*x+1) / ((x.^2) + x + 1)")
xlabel("x-axis")
ylabel("y-axis")