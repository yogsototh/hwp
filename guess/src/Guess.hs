module Guess
  ( guess
  ) where

import Protolude

guess :: IO ()
guess = guessBetween 0 120

guessBetween :: Integer -> Integer -> IO ()
guessBetween minAge maxAge = do
  let age = (maxAge + minAge) `div` 2
  if minAge == maxAge
    then putText ("You are " <> show age)
    else do
      putText ("Are you younger than " <> show age <> "?")
      answer <- getLine
      case answer of
        "y" -> guessBetween minAge (age - 1)
        _ ->  guessBetween (if age == minAge then age + 1 else age) maxAge
