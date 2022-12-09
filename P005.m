%% Project Euler - Problem 5
% Smallest multiple
% https://projecteuler.net/problem=5

num = 1;
for n = 1:20
    num = num*n/gcd(n,num);
end
disp(num)