%% Project Euler - Problem 9
% Special Pythagorean triplet
% https://projecteuler.net/problem=9

sol = [];
for c = 3:997
    for b = 2:999-c
        a = 1000-b-c;
        if a^2 + b^2 == c^2
            sol = a*b*c;
            break
        end
    end
    if ~isempty(sol)
        break
    end
end
disp(sol)