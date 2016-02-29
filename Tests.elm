module Tests (..) where

import ElmTest exposing (..)
import String
import IsFibonacciNumber


all : Test
all =
  suite
    "Fibonacci Number"
    [ defaultTest (assert (not (IsFibonacciNumber.test -1)))
    , defaultTest (assert (not (IsFibonacciNumber.test 0)))
    , defaultTest (assert (IsFibonacciNumber.test 1))
    , defaultTest (assert (IsFibonacciNumber.test 5))
    , defaultTest (assert (not (IsFibonacciNumber.test 7)))
    ]
