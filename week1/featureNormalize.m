function [X_norm, mu, sigma] = featureNormalize(X)
  
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


mu = mean(X);
sigma = std(X);

mu_t = repmat(mu, size(X,1),1);
sigma_t = repmat(sigma, size(X,1), 1);

X_norm = (X - mu_t) ./ sigma_t;

endfunction
