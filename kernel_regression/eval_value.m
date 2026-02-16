function pred = eval_value(x, X, f, f_param, a)
    lambda = 1;
    n = size(X, 1); % Numarul de exemple din setul de date de antrenament
    pred = 0; % Variabila pentru predictie
    % Calculul estimarii folosind parametrii modelului si functia de kernel
    for i = 1 : n
        pred = pred + a(i) * f(X(i, :), x, f_param);
    end
    pred = (1 / lambda) * pred; % Calculul predictiei
endfunction