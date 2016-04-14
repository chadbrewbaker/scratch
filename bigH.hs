
--Usage: runghc bigH.hs > main.hs; time runghc main.hs
module BigH where
import Control.Monad

header ="module BigH where\n\nmain = do"


genVariableDef  n = do
                      putStrLn $ spaces ++ "let a" ++ show n ++" = "++ show n 

genVariableSuffSum  n = do
                      putStr  $ " + a" ++ show n

spaces = "        "
main = do 
          putStrLn $ header
          forM_ [1..2000] $ \n -> genVariableDef n
          putStr $ spaces ++ "let sum = a1"
          forM_ [2..2000] $ \n -> genVariableSuffSum n
          putStrLn ""
          putStrLn $ spaces ++ "putStrLn $ show sum"
         

