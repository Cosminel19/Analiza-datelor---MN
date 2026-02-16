function B = k_secv (A, k)
  % Se verifica daca ultimul element din A este semn de punctuatie
  last_token = A{end};
  if punctuation(last_token)
    A = A(1 : end - 1);
  endif
    % Generare k-secvente
    for i = 1:length(A) - k + 1
        k_sequence = A(i:i + k - 1);
        B{i} = strjoin(k_sequence);
    end
    % Transformare intr-un cell array coloana
    B = B';
endfunction
