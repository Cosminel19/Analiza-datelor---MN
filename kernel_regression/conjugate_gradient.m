function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
    r = b - A * x0;
    v = r; % Initializarea vectorului de cautare
    x = x0; % Initializarea solutiei
    tolsquared = tol ^ 2;
    k = 1; % Contorul de iteratii
    while k <= max_iter && r' * r > tolsquared
        tk = (r' * r) / (v' * A * v); % Calcularea valorii tk
        x = x + tk * v; % Actualizarea vectorului x
        % Calcularea noii valori pentru r
        r_prev = r;
        r = r - tk * A * v;
        % Calcularea valorii pentru sk
        sk = (r' * r) / (r_prev' * r_prev);
        v = r + sk * v; % Actualizarea vectorului v
        k++;
    endwhile
endfunction