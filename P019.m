%% Project Euler - Problem 19
% Counting Sundays
% https://projecteuler.net/problem=19

first_days = datetime('1-Jan-1901'):calmonths(1):datetime('1-Dec-2000');
sum(weekday(first_days) == 1)