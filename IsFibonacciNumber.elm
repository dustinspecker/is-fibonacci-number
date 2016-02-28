module IsFibonacciNumber (test) where

{-| This library determines if an Int is a Fibonacci Number.

# Usage
@docs test

-}

{-| Determine if an Int is a Fibonacci Number.

  test -1 -- False
  test 0 -- False
  test 3 -- True
  test 4 -- False

-}
test : Int -> Bool
test n =
  let
    nCommon = 5 * (toFloat n)^2
    nPos = sqrt (nCommon + 4)
    nNeg = sqrt (nCommon - 4)
  in
    if n <= 0
      then False
      else
        toFloat(floor nPos) == nPos || toFloat(floor nNeg) == nNeg
