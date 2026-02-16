function probabilities = multivariate_gaussian(X, mean_values, variances)
    m = size(X, 1);
    probabilities = zeros(m, 1);
    % Calculul probabilitatilor pentru fiecare vector de intrare
    for i = 1 : m
        probabilities(i) = gaussian_distribution(X(i, :), mean_values, variances);
    endfor
endfunction
