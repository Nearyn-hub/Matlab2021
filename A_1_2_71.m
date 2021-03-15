format long % enable 4 decimal place precision
f = @(x) (sin(sqrt(1-x))) ./ (sqrt(1-(x.^2))); % "sin" is radians by default
fplot(f);

% adjust zoom and read result graphically
grid on
axis([-5 5 -5 5])           
axis([-1 1 0.6 1])
axis([-0.5 0.5 0.82 0.86])

legend("(sin(sqrt(1-x))) ./ (sqrt(1-(x.^2)))")
title("Block B: 1.2.71")
xlabel("x-axis")
ylabel("y-label")