function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
  m = length(y);
  J_history = zeros(num_iters, 1);
  n = length(theta);
  theta_t = theta;
  for iter = 1:num_iters
    for j=1:n
      theta_t(j,1) = theta(j,1) - alpha * sum((X *theta - y).*X(:,j))/m;
      
    end
   
  theta = theta_t;
 
  J_history(iter) = computerCostMulti(X, y, theta); 
  endfor
endfunction
