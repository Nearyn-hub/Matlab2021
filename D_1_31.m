% Block B: D. 1.31
arr = 1:30;
for i = 1:30
    arr(i) = 2^(i-1);
end
s = sum(arr);
disp(s)


