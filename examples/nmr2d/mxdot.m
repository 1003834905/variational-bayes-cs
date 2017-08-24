
% multicomplex one-dimensional inner product.
function d = mxdot (x, y)
  z = zeros(size(x));

  x = mxconj(x);

  z(:,1) = x(:,1) .* y(:,1) ...
         - x(:,2) .* y(:,2) ...
         - x(:,3) .* y(:,3) ...
         - x(:,4) .* y(:,4);

  z(:,2) = x(:,1) .* y(:,2) ...
         + x(:,2) .* y(:,1) ...
         - x(:,3) .* y(:,4) ...
         - x(:,4) .* y(:,3);

  z(:,3) = x(:,1) .* y(:,3) ...
         + x(:,3) .* y(:,1) ...
         - x(:,2) .* y(:,4) ...
         - x(:,4) .* y(:,2);

  z(:,4) = x(:,1) .* y(:,4) ...
         + x(:,4) .* y(:,1) ...
         + x(:,2) .* y(:,3) ...
         + x(:,3) .* y(:,2);

  d = reshape(sum(z, 1), 4, 1);
end

