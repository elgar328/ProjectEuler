%% Project Euler - Problem 4
% Largest palindrome product
% https://projecteuler.net/problem=4

nums = (100:999)'*(100:999);
nums = sort(nums(:),'descend');
for n = 1:numel(nums)
    if strcmp(num2str(nums(n)),fliplr(num2str(nums(n))))
        sol = nums(n);
        break
    end
end
disp(sol)