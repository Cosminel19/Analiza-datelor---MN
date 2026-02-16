function [false_pozitives, false_negatives, true_pozitives] = check_predictions(predictions, truths)
    % Initializare
    false_pozitives = 0; % Numarul de rezultate false pozitive
    false_negatives = 0;  % Numarul de rezultate false negative
    true_pozitives = 0; % Numarul de rezultate adevarat pozitive
    % Iterare pentru a calcula numarul de predictii corecte si incorecte
    for i = 1 : length(predictions)
      if predictions(i) == 1 && truths(i) == 0
        false_pozitives = false_pozitives + 1;
      elseif predictions(i) == 0 && truths(i) == 1
        false_negatives = false_negatives + 1;
       elseif predictions(i) == 1 && truths(i) == 1
        true_pozitives = true_pozitives + 1;
       endif
    endfor
endfunction