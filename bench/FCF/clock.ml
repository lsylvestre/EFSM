let automaton
      Up -> do clock := true in Down
    | Down -> do clock := false in Up
    end
in Up