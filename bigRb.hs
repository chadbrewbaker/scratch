
--Usage: runghc bigRb.hs > main.rb; ruby main.rb
module BigRb where
import Control.Monad

genVariableDef  n = do
                      putStrLn $ "a" ++ show n ++" = "++ show n

genVariableSuffSum  n = do
                      putStr $ " + a" ++ show n

main = do 
          forM_ [1..7900] $ \n -> genVariableDef n
          putStr "sum = a1"
          forM_ [2..7900] $ \n -> genVariableSuffSum n
          putStrLn ""
          putStrLn $ "puts sum"

