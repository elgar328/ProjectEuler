%% Project Euler - Problem 7
% 10001st prime
% https://projecteuler.net/problem=7

N = 200000;         % selected empirically
sieve = true(N,1);  % sieve of eratosthenes
sieve(1) = false;
nth = 0;
for n = 2:N
    if sieve(n)
        nth = nth + 1;
        if nth == 10001
            break
        end
        sieve(2*n:n:end) = false;
    end
end
disp(n)