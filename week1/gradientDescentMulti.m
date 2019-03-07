 function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
  m = length(y);
  J_history = zeros(num_iters, 1);
  n = length(theta);
  theta_t = theta;
  for iter = 1:num_iters
    theta= theta - alpha * ((X * theta - y)' *X / m)';
    J_history(iter) = computerCostMulti(X, y, theta); 
  endfor
endfunction
