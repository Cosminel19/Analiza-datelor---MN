function [a] = get_prediction_params (K, y, lambda)
    m = size(K, 1); % Dimensiunea matricei de kernel
    I = eye(m);
    A = lambda * I + K; % Construirea matricei A conform formulei
    L = cholesky(A);
    P = get_lower_inverse(L);
    M = P' * P;
    a = lambda * M * y; % Estimarea parametrilor a folosind formula data
endfunction
