clc; clear;
sum = 0;
disp('******************')

for i = 1:100
    sum = sum + i;
end

sumAsNumber = num2str(sum);

disp(['Sum = ', sumAsNumber]);
disp('******************')
disp(' ');

disp(['Sum values between 1 and 100 = ', sumAsNumber]);
