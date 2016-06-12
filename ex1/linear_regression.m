function [f,g] = linear_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The target value for each example.  y(j) is the target for example j.
  %
  
  m=size(X,2);  % Num of samples
  n=size(X,1);  % Num of features

  f=0;
  g=zeros(size(theta));

  %
  % TODO:  Compute the linear regression objective by looping over the examples in X.
  %        Store the objective function value in 'f'.
  %
  % TODO:  Compute the gradient of the objective with respect to theta by looping over
  %        the examples in X and adding up the gradient for each example.  Store the
  %        computed gradient in 'g'.
  
%%% YOUR CODE HERE %%%

  for i=1:m
    f = f + ((theta')*X(:,i) - y(i)).^2;
  end
  f = f / 2.0;
  
  for j=1:n
    for i=1:m
      g(j) = g(j) + X(j,i) * ((theta')*X(:,i)-y(i));
    end
  end
  

%     f = norm(y - theta'*X)^2/2;
%     for j = 1:n
%         for i = 1:m
%             g(j) = g(j) + X(j,i)*(theta'*X(:,i) - y(i));
%         end
%     end