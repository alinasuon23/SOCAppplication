% Values of x
x = [2 1 -1 3 0];
% Signals name
signals = ["y1[n] = x[n -2]" "y2[n] = x[n + 1]" "y3[n] = x[-n]" "y4[n] = x[-n + 1]"];

hold on;
% For k = 1 to k = 4
for k = (1:4)
    % Create a subplot
    subplot(4,1,k);
    % Initialize the axis values
    xaxis = [];
    yaxis = [];
    % for n = -10 to n = 10
    for n = (-10:10)
        % Add n to the x axis
        xaxis = [xaxis, n];
        % Call the sigshift function
        [y, m] = sigshift(x,n,k);
        % Add the result to the y axis
        yaxis = [yaxis, y];
    end
    % Display the graph
    stem(xaxis, yaxis);
    % Set the x label
    xlabel("n");
    % Set the y label
    ylabel("x[n]");
    % Set the graph title
    title(signals(k));
end
hold off;
