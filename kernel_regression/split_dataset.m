function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
    % Numarul total de exemple
    total_examples = size(X, 1);
    % Numarul de exemple pentru antrenament si test
    train_examples = round(percentage * total_examples);
    test_examples = total_examples - train_examples;
    % Selectarea exemplelor pentru antrenament si test
    X_train = X(1:train_examples, :);
    y_train = y(1:train_examples, :);
    X_pred = X(train_examples + 1:end, :);
    y_pred = y(train_examples + 1:end, :);
endfunction
