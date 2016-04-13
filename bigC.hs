
--Usage: runghc bigC.hs > main.c; gcc main.c
module BigC where
import Control.Monad

cheader ="#include<stdio.h>\nint main(){\n"

cfooter ="printf(\"%d\", sum);\nreturn 0;\n}"
genVariableDef  n = do
                      putStrLn $ "int a" ++ show n ++" = "++ show n ++ ";"

genVariableSuffSum  n = do
                      putStrLn $ "+ a" ++ show n

main = do 
          putStrLn $ cheader
          forM_ [1..8300] $ \n -> genVariableDef n
          putStrLn "int sum = a1"
          forM_ [2..8300] $ \n -> genVariableSuffSum n
          putStrLn ";\n"
          putStrLn $ cfooter

