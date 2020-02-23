function [y,m] = sigshift(x, n, k)

    % for each possibilities of k
    switch k
    case 1
        xindex = n -2;
    case 2
        xindex = n + 1;
    case 3
        xindex = -n;
    case 4
        xindex = -n + 1;
    end
    % Check if xindex is out of range
    if (xindex >= 1 & xindex < length(x))
        % if not, get x[n]
        y = x(xindex);
    else
        % if so, set y = 0
        y = 0;
    end
    % save xindex to m
    m = xindex;
end