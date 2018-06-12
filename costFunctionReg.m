function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


predictions = X * theta;
h_theta = sigmoid(predictions);
errors = h_theta - y;
c = - y .* log(h_theta) - (1 - y) .* log(1 - h_theta);
theta_j = theta(2:size(theta)); % this create the column vector form the theta without the theta_0
J =  1 / m * sum(c) + lambda / (2 * m) * theta_j' * theta_j;

grad = 1 / m * X' * errors + lambda / m * [0; theta_j];

% =============================================================

end
