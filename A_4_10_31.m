% function 
f = @(x) exp(-x); % no need to derivate; derivative of exp(-x) = exp(-x)

% set up taylors function; note that since f=f'=f''=...=f'(n)
% we simply write f(x) in its place (for simplicity)
% also the max changes 0! -> 1! so no zero division occurs
% n is written instead of n+1, since the limit is decided in loop
% and therefore we only want this function to be able to step (keeps it easy)
a = 0;
t = @(x, n) (f(a) / factorial(max(1, n))) * ((x-a)^(n));

% caluclate to 5 decimal points
result = 0;
prec = 10;
for i = 0:prec
    result = result + t(1, i);
end

% display result