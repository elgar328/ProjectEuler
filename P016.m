%% Project Euler - Problem 16
% Power digit sum
% https://projecteuler.net/problem=16

sum(string(vpa(sym(2)^1000,310)).extractBefore('.').char-48)