function retval = polynomial_kernel (x, y, d)
  % Implementarea functiei pentru kernelul polinomial
  retval = (1 + x * y') ^ d;
endfunction
