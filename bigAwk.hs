
--Usage: runghc bigAwk.hs > main.awk; awk -f main.awk
module BigPy where
import Control.Monad

header = "BEGIN {\n"
footer = "\n}"
genVariableDef  n = do
                      putStrLn $ "a" ++ show n ++" = "++ show n

genVariableSuffSum  n = do
                      putStr $ " + a" ++ show n

main = do 
          putStrLn $ header
          forM_ [1..30000] $ \n -> genVariableDef n
          putStr "sum = a1"
          forM_ [2..30000] $ \n -> genVariableSuffSum n
          putStrLn ""
          putStrLn $ "print sum"
          putStrLn $ footer

