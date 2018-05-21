module Main where

import PGF
import System.Random
import Paths_castle



main :: IO ()
main = do
  pgf <- getDataFileName "gf/Castle.pgf"
  gr <- readPGF pgf
  let lang : _ = languages gr
  g <- getStdGen
  putStrLn $ linearize gr lang (head (generateRandom g gr (startCat gr)))
