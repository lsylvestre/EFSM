let automaton
      Even(n) -> if n > 0 then Odd(n-1) else true
    | Odd(n) -> if n > 0 then Even(n-1) else false
    end
in Even(42)
