% cosx = x^2  <=>  cosx / x^2 = x^2/x^2  <=>  cosx/x^2 = 1  <=>  
% cosx / x^2 - 1 = 0 = f(x)
f = @(x)(cos(x) ./ (x.^2)) - 1;

% 
fp = @(x) x; % derivative of x 

% solve through newton-raphson; repeat this function
nr = @(x0) x0 - (f(x0) / fp(x0));  

% what does this say about eventual points where f(x) = 0?