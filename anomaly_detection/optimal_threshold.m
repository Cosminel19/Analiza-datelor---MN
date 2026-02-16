function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    % Initializare
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;
    % Calculul minimului si maximului din vectorul de probabilitati
    mini = min(probabilities);
    maxi = max(probabilities);
    stepsize = (maxi - mini) / 1000; % Numarul de pasi
    % Iterare pentru a gasi pragul optim
    for i = mini : stepsize : maxi
        epsilon = i;
        % Calcularea vectorului de predictii
        predictions = probabilities < epsilon;
        % Calculul metricilor
        [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths);
        [precision, recall, F1] = metrics(true_pozitives, false_pozitives, false_negatives);
        % Actualizarea celor mai bune valori
        if F1 > best_F1
            best_epsilon = epsilon;
            best_F1 = F1;
            associated_precision = precision;
            associated_recall = recall;
        endif
    endfor
endfunction
