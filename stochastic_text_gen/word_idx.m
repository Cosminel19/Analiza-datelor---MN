function retval = word_idx (distinct_wds)
    % Returneaza dictionarul cu toate cuvintele
    retval = containers.Map(distinct_wds, 1 : length(distinct_wds));
endfunction
