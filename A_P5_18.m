% functions
f1 = @(x) 2*x;
f2 = @(x) f1(x) - 1;   
f3 = @(x) 1 - f1(x);   
f4 = @(x) sqrt(f3(x));  
f5 = @(x) 1 / f4(x);     
f6 = @(x) f5(x) - 1;    

% plot functions
hold on
fplot(f1, "r") 
fplot(f2, "y") 
fplot(f3, "g")
fplot(f4, "c") 
fplot(f5, "b") 
fplot(f6, "m")
hold off

% style 
legend("2*x", "f1(x) - 1", "", "sqrt(f3(x))", "1 / f4(x)", "f5(x) - 1")
title("Block A: P5.18")
ylabel("y-axis")
xlabel("x-axis")

