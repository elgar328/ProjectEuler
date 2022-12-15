%% Project Euler - Problem 12
% Highly divisible triangular number
% https://projecteuler.net/problem=12

triangle_number = 0;
adder = 1;
while true
    triangle_number = triangle_number + adder;
    adder = adder + 1;
    if nfactor(triangle_number) > 500
        break
    end
end
disp(triangle_number)

function counter = nfactor(n)
if sqrt(n) == round(n)
    counter = 3;
else
    counter = 2;
end
den = 2;
while den < sqrt(n)
    if mod(n,den) == 0
        counter = counter + 2;
    end
    den = den + 1;
end
end