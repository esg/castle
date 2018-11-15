module Main where

import PGF
import Control.Concurrent
import Control.Monad
import Data.Char
import Data.Maybe
import System.Environment
import System.Exit
import System.Random
import Paths_castle


normalize :: String -> String
normalize =
    let ss (' ' : '.' : cs) = '.' : (ss cs)
        ss (c : cs) = c : (ss cs)
        ss [] = []
    in
      (map toUpper) . ss

loop :: [String] -> IO ()
loop (s : ss) = do
  putStrLn $ normalize s
  threadDelay 2000000
  loop ss

parseArgs [] = usage >> exit
parseArgs (arg : _) = return arg

usage = putStrLn "Usage: castle LANG"
exit = exitWith ExitSuccess

main :: IO ()
main = getArgs  >>= parseArgs >>= generate

generate :: String -> IO ()
generate arg = do
  pgf <- getDataFileName "gf/Castle.pgf"
  prf <- getDataFileName "gf/Castle.probs"
  gr <- readPGF pgf
  pr <- readProbabilitiesFromFile prf gr
  let pgr =  setProbabilities pr gr
  let lang = fromJust $ readLanguage ("Castle" ++ arg)
  case lang `elem` languages gr of
    True -> do
        g <- getStdGen
        loop $ map (linearize pgr lang) (generateRandom g pgr (startCat pgr))
    False -> do
        putStrLn $ "castle: Unknown language '" ++ arg ++ "'"
