%% Project Euler - Problem 14
% Longest Collatz sequence
% https://projecteuler.net/problem=14

sol = 1;
len = 1;
for n = 2:1000000
    len_new = collatz_length(n);
    if len < len_new
        sol = n;
        len = len_new;
    end
end
disp(sol)

function out = collatz_length(n)
out = 1;
while n~=1
    out = out+1;
    if mod(n,2) == 0
        n = n/2;
    else
        n = n*3+1;
    end
end
end