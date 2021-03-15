format long

% y = g^-1(x) <=> x = g(y):
% =>  g^-1(x) = y = where g(y) = 2
% y^-1' = 1 / g'(y)

% calculate
g = @(y) 2*y + sin(y); % increases; one-to-one; invertable
gp = @(y) y

%plot

