function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % Initializare dimensiuni ale matricei stocastice
    m = length(words_set);
    n = length(k_secv_set);
    retval = zeros(n, m); % Initializarea matricei stocastice
    % Iterare pentru a completa matricea
    for i = 1:length(k_secv_corpus)
        % Determinare index pentru k-secventa
        k_index = find(strcmp(k_secv_set, k_secv_corpus{i}));
        % Determinare index pentru cuvantul de pe pozitia k
        word_index = find(strcmp(words_set, corpus_words{i + k}));
        % Incrementare valoare corespunzatoare din matrice
        retval(k_index, word_index) = retval(k_index, word_index) + 1;
    endfor
endfunction