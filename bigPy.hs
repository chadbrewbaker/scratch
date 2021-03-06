
--Usage: runghc bigPy.hs > main.py; python main.py
module BigPy where
import Control.Monad

genVariableDef  n = do
                      putStrLn $ "a" ++ show n ++" = "++ show n

genVariableSuffSum  n = do
                      putStr $ " + a" ++ show n

main = do 
          forM_ [1..50000] $ \n -> genVariableDef n
          putStr "sum = a1"
          forM_ [2..50000] $ \n -> genVariableSuffSum n
          putStrLn ""
          putStrLn $ "print sum"

