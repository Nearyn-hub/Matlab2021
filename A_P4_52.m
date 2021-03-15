% plot function
%f = @(x) (2*x^2 + 3*x) / (x^2 + 4*x + 5); non vectorized
f = @(x) (2*(x.^2) + 3*x) ./ (x.^2 + 4*x + 5);
hold on
fplot(f)
plot(-2, f(-2), 'r*') % origin
hold off


% style plot
grid on
axis([-10 10 -4 8])
legend("(2*x^2 + 3*x) / (x^2 + 4*x + 5)", "origo");
title("Block A P4.52")
xlabel("x-axis")
ylabel("y-axis")
