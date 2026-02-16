function [a] = get_prediction_params_iterative (K, y, lambda)
    n = size(K, 1)
    A = lambda * eye(n) + K;
    x0 = zeros(n, 1); % Valoarea initiala
    eps = 1e-10; % Toleranta pentru criteriul de oprire
    max_iter = 1000; % Numarul maxim de iteratii permise
    % Gasirea solutiei sistemului de ecuatii liniare folosind metoda gradientului conjugat
    x = conjugate_gradient(A, y, x0, eps, max_iter);
    a = lambda * x;  % Estimarea parametrilor a folosind formula data
endfunction
