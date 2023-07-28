import Data.Functor ((<&>))
import Data.Maybe (fromMaybe, listToMaybe, mapMaybe)
import System.Environment (getArgs)
import Text.Read (readMaybe)

main :: IO ()
main =
  getArgs
  <&> parseArgs
  <&> fromMaybe 10
  <&> prog
  >>= print

prog :: Int -> [Int]
prog n = take n coeffs

parseArgs :: [String] -> Maybe Int
parseArgs = listToMaybe . mapMaybe tryToInt

tryToInt :: String -> Maybe Int
tryToInt = readMaybe

firstColumn :: [Int]
firstColumn = repeat 1

nextColumn :: [Int] -> [Int]
nextColumn = scanl1 (+)

triangle :: [[Int]]
triangle = triangle' firstColumn

triangle' :: [Int] -> [[Int]]
triangle' col = col : (triangle' . nextColumn . tail) col

coeffs :: [Int]
coeffs = map (!! 0) triangle
