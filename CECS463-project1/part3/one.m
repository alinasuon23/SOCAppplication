% Values of x
x = [2 1 -1 3 0];
% x indexes
xindexes = [0 2 3 4];

% Values in the x axis
xaxis = [];
% Values in the y axis
yaxis = [];

% for n = -3 to n = 7
for n = (-3:7)
    % Add n to x-axis array
    xaxis = [xaxis, n];
    % Add search y value for n
    foundAt = find(xindexes == n);
    % If found, set y to the value found in x
    if (foundAt)
        y = x(find(xindexes == n));
    % If not found, set y = 0
    else
        y = 0;
    end
    % Add the y value to the y-axis array
    yaxis = [yaxis, y];
end
% Draw the graph
stem(xaxis, yaxis);
