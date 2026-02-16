function [P] = get_lower_inverse (L)
    n = size(L, 1); % Dimensiunea matricei L
    P = zeros(n);
    % Calculul elementelor matricei P
    for i = 1:n
        P(i, i) = 1 / L(i, i);
        for j = 1:i - 1
            % Calculul factorului utilizat in calculul elementelor de sub diagonala principală
            factor = L(i, j:i - 1) * P(j:i - 1, j);
            P(i, j) = -factor / L(i, i);
        endfor
    endfor
endfunction
