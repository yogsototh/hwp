import Protolude

import Guess (guess)

main :: IO ()
main = do
  guess
  putText "Bye!"
