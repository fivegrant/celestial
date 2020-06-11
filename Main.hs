module Main where

import System.Environment

main :: IO ()
main = do
  putStrLn "Celestial was called with the following arguments: "
  args <- getArgs
  mapM putStrLn args
