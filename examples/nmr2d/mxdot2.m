
% multicomplex two-dimensional inner product.
function d = mxdot2 (x, y)
  z = zeros(size(x));

  x = mxconj2(x);

  z(:,:,1) = x(:,:,1) .* y(:,:,1) ...
           - x(:,:,2) .* y(:,:,2) ...
           - x(:,:,3) .* y(:,:,3) ...
           - x(:,:,4) .* y(:,:,4);

  z(:,:,2) = x(:,:,1) .* y(:,:,2) ...
           + x(:,:,2) .* y(:,:,1) ...
           - x(:,:,3) .* y(:,:,4) ...
           - x(:,:,4) .* y(:,:,3);

  z(:,:,3) = x(:,:,1) .* y(:,:,3) ...
           + x(:,:,3) .* y(:,:,1) ...
           - x(:,:,2) .* y(:,:,4) ...
           - x(:,:,4) .* y(:,:,2);

  z(:,:,4) = x(:,:,1) .* y(:,:,4) ...
           + x(:,:,4) .* y(:,:,1) ...
           + x(:,:,2) .* y(:,:,3) ...
           + x(:,:,3) .* y(:,:,2);

  d = reshape(sum(sum(z, 1), 2), 4, 1);
end

