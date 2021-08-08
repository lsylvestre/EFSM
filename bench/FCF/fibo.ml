let automaton Fibonacci(n) ->
      let automaton Aux(a,b,n) -> 
            if n <= 0 then b else Aux(b,a+b,n-1)
          end in Aux(1,1,n)
    end 
in Fibonacci(6)
