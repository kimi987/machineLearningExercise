function J = computerCostMulti(X, y, theta)
m = length(y);
J = 0;

J = sum((X * theta - y).^2) / (m * 2);

end
