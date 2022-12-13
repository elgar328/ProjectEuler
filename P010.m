%% Project Euler - Problem 10
% Summation of primes
% https://projecteuler.net/problem=10

% solution 1
sol = sum(primes(2000000));
fprintf('%d\n',sol)

% solution 2
N = 2000000;
sieve = true(N,1); % sieve of eratosthenes
sieve(1) = false;
for n = 2:N/2
    if sieve(n)
        sieve(2*n:n:end) = false;
    end
end
sol = sum(find(sieve));
fprintf('%d\n',sol)