%% Project Euler - Problem 22
% Names scores
% https://projecteuler.net/problem=22

fileID = fopen('p022_names.txt');
names = textscan(fileID,'%q','Delimiter',',');
names = sort(names{1});
fclose(fileID);

scores = 0;
for n = 1:length(names)
    scores = scores + sum(names{n}-64)*n;
end
disp(scores)