quickSort :: (Ord a) => [a] -> [a]
quickSort [] = [] 
quickSort (x:xs) = quickSort lesser ++ [x] ++ quickSort greater
  where
    lesser = filter (< x) xs  
    greater = filter (>= x) xs  


main :: IO ()
main = do
    let lista = [5, 3, 8, 6, 2, 7, 4, 1]
    putStrLn "Lista original:"
    print lista
    let listaOrdenada = quickSort lista
    putStrLn "Lista ordenada:"
    print listaOrdenada
