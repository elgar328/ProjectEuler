%% Project Euler - Problem 2
% Even Fibonacci numbers
% https://projecteuler.net/problem=2

fibo_seq = [1,2];
sol = 2;
while fibo_seq(2) < 4000000
    fibo_seq = [fibo_seq(2), sum(fibo_seq)];
    if mod(fibo_seq(2),2) == 0
        sol = sol + fibo_seq(2);
    end
end
disp(sol)