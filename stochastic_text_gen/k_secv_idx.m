function retval = k_secv_idx (distinct_k_sec)
  % Returneaza dictionarul cu indecsii fiecarei k-secventa
  unique_keys = unique(distinct_k_sec);
  retval = containers.Map(unique_keys, 1:length(unique_keys));
endfunction