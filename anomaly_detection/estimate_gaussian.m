function [mean_values, variances] = estimate_gaussian(X)
    m = size(X, 1);  % Numarul de vectori in setul de date
    n = size(X, 2);  % Dimensiunea vectorilor
    mean_values = (1 / m) * sum(X);  % Calculul mediei
    % Calculul matricei de varianta
    dif = X - mean_values;
    variances = (1 / m) * (dif' * dif);
endfunction
