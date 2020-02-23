% First quadrant

x1 = randi([1, 5]);
y1 = randi([1, 5]);

% Second quadrant

x2 = randi([1, 5]);
y2 = -randi([1, 5]);

% Third quadrant

x3 = -randi([1, 5]);
y3 = -randi([1, 5]);

% Fourth quadrant

x4 = -randi([1, 5]);
y4 = randi([1, 5]);

hold on;
plot([x1 x2], [y1 y2]);
plot([x2 x3], [y2 y3]);
plot([x3 x4], [y3 y4]);
plot([x4 x1], [y4 y1]);
% Get the area
area = polyarea([x1 x2 x3 x4], [y1 y2 y3 y4]);
% Display the title
title(['Area = ' num2str(area)]);
hold off;

