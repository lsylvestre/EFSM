let automaton
      Tic(n) ->
        if n < 100
        then do clock := false in Tic(n + 1)
        else do clock := true in Tic(0)
    end
in Tic(0)