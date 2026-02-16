function retval = gaussian_kernel (x, y, sigma)
  % Implementarea functiei pentru kernelul gausian
  s = norm(x - y) ^ 2;
  retval = exp(-s / (2 * sigma ^ 2));
endfunction
