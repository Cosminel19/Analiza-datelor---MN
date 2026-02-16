function [K] = build_kernel (X, f, f_param)
    n = size(X, 1); % Numărul de exemple din setul de date
    K = zeros(n, n); % Initializarea matricei de kernel
    % Calculul valorilor matricei de kernel
    for i = 1:n
        for j = 1:n
            % Calculul valorii kernel pentru perechea de exemple i si j
            K(i, j) = f(X(i, :), X(j, :), f_param);
        endfor
    endfor
endfunction
