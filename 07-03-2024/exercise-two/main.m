clc; clear;

counter = 1;
accumulator = 0;

while counter <= 100
    accumulator = accumulator + counter;
    counter = counter + 1;
end

disp(['Sum = ', num2str(accumulator)]);
