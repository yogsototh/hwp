{- |
Module      : Lib
Description : Example of a library file.
Copyright   : (c) 2018, Yann Esposito
License     : ISC
Maintainer  : yann.esposito@gmail.com
Stability   : experimental
Portability : POSIX

Example of library file which is also used for testing the test suites.
You can write a longer description of this module here and add @some markup@.

-}
module Lib
  (
    -- * Exported functions
    inc
  ) where

import Protolude

-- | Increment one 'Num' value.
--
--  >>> let answer = 42 :: Int
--  >>> let prev = answer - 1
--  >>> inc prev
--  42
--  >>> succ . Prelude.last . Prelude.take prev . iterate inc $ 1
--  42
--
--  Properties:
--
--  prop> succ x == inc x
--  prop> inc (negate x) == negate (pred x)
--
inc :: Num a => a -- ^ value to increment
             -> a -- ^ result
inc x = x + 1
