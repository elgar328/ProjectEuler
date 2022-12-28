%% Project Euler - Problem 21
% Amicable numbers
% https://projecteuler.net/problem=21

sol = 0;
for n = 1:9999
    if is_amicable(n)
        sol = sol + n;
    end
end
disp(sol)

function out = is_amicable(num)
    tmp = d(num);
    if num ~= tmp && num == d(tmp)
        out = true;
    else
        out = false;
    end
end

function out = d(num)
out = 0;
for n = 1:num-1
    if mod(num,n) == 0
        out = out + n;
    end
end
end