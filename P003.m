%% Project Euler - Problem 3
% Largest prime factor
% https://projecteuler.net/problem=3

% solution 1
max(factor(600851475143))

% solution 2
num = 600851475143;
divider = 2;
while divider < num
    while mod(num,divider) == 0
        num = num/divider;
    end
    divider = divider + 1;
end
disp(num)