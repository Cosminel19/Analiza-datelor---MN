function probability = gaussian_distribution(X, mean_value, variance)
    n = size(X, 2);
    dif = X - mean_value;
    inv_sum = inv(variance);
     % Exponentul termenului din distributia gaussiana
    exponent = exp((-1 / 2) * dif * inv_sum * dif');
    deter = det(variance);
    % Produsul din formula densitatii de probabilitate gaussiene
    prod = ((2 * pi) ^ (n / 2)) * (deter ^ (1 / 2));
    % Calculul densitatii de probabilitate pentru fiecare exemplu din X
    probability = (1 / prod) * exponent;
endfunction