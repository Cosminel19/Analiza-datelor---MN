function [L] = cholesky (A)
    n = size(A, 1);
    L = zeros(n); % Initializarea matricei L
    % Calculul elementelor matricei L
    for i = 1:n
        for j = 1:i
            if i == j
                % Calculul elementului de pe diagonala principala al matricei L
                L(i, i) = sqrt(A(i, i) - sum(L(i, 1:i - 1).^2));
            else
                % Calculul elementelor de sub diagonala principala
                factor = L(i, 1:j - 1) * L(j, 1:j - 1)';
                L(i, j) = (A(i, j) - factor) / L(j, j);
            endif
        endfor
    endfor
endfunction
